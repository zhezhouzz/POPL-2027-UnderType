JOBNAME      ?= context-type
LATEXMK      ?= latexmk
LATEXMKFLAGS ?= -pdf -interaction=nonstopmode -halt-on-error -shell-escape
PACKAGE_DIR  ?= revision-package
COVER_LETTER = rebuttal/cover-letter.md
JOBS         = $(JOBNAME) $(JOBNAME)-diff $(JOBNAME)-sm-full
PDFS         = $(addsuffix .pdf,$(JOBS))

# TeX Live 2025's latexminted is incompatible with Python 3.14.
MINTED_PYTHON_BIN ?= $(firstword $(wildcard /opt/homebrew/opt/python@3.12/libexec/bin /usr/local/opt/python@3.12/libexec/bin))
ifneq ($(MINTED_PYTHON_BIN),)
export PATH := $(MINTED_PYTHON_BIN):$(PATH)
endif

.PHONY: all paper diff full package haste clean cleanall

# The variants share minted's cache, so build them sequentially.
.NOTPARALLEL:

all: paper diff full

# Clean main paper, including references but excluding the appendix.
paper:
	$(LATEXMK) $(LATEXMKFLAGS) -jobname=$(JOBNAME) \
	  -usepretex='\def\cleanversion{1}\def\paperonly{1}' main.tex

# Main paper with the existing blue revision highlights and change bars.
diff:
	$(LATEXMK) $(LATEXMKFLAGS) -jobname=$(JOBNAME)-diff \
	  -usepretex='\def\paperonly{1}' main.tex

# Clean paper with the supplemental appendix.
full:
	$(LATEXMK) $(LATEXMKFLAGS) -jobname=$(JOBNAME)-sm-full \
	  -usepretex='\def\cleanversion{1}' main.tex

package: all
	mkdir -p "$(PACKAGE_DIR)"
	cp $(PDFS) "$(PACKAGE_DIR)/"
	cp "$(COVER_LETTER)" "$(PACKAGE_DIR)/cover-letter.md"

haste: diff

clean:
	@for job in $(JOBS); do \
	  $(LATEXMK) -c -jobname="$$job" main.tex || exit $$?; \
	done

cleanall:
	@for job in $(JOBS); do \
	  $(LATEXMK) -C -jobname="$$job" main.tex || exit $$?; \
	done
