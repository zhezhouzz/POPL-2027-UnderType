JOBNAME      = outypes
LATEXMK      = latexmk
LATEXMKFLAGS = -pdf -jobname=$(JOBNAME) -interaction=nonstopmode -halt-on-error
# keep the next line ONLY if you use minted/gnuplot/etc.
LATEXMKFLAGS += -shell-escape

.PHONY: all haste clean cleanall

all:
	$(LATEXMK) $(LATEXMKFLAGS) main.tex

haste:
	pdflatex $(filter -shell-escape,$(LATEXMKFLAGS)) -jobname=$(JOBNAME) \
	         -interaction=nonstopmode main

clean:
	$(LATEXMK) -c -jobname=$(JOBNAME)

cleanall:
	$(LATEXMK) -C -jobname=$(JOBNAME)
