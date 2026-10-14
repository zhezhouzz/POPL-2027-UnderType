# POPL 2027 Revision Plan

Paper: #106, *Context Types: Bunched Modalities for Unifying Safety and Reachability*

Branch: `revision`

Prepared: October 14, 2026

## Working Protocol

We will complete the revision one commit at a time.

For each planned commit:

1. Implement only the changes assigned to that commit.
2. Inspect the full diff and run the relevant consistency checks and LaTeX build.
3. Stop before committing and present the proposed diff, technical decisions, and verification results to the authors.
4. Revise the changes in response to author feedback.
5. Create the commit only after author approval, then proceed to the next item.

Changes that merely answered a reviewer's misunderstanding are not automatically copied from the rebuttal into the paper. A response is incorporated only when it records an explicit revision promise, fixes an actual error, addresses presentation that demonstrably caused confusion, or satisfies the mandatory post-rebuttal feedback.

## Planned Commits

### 0. Archive post-rebuttal revision requirements

Proposed commit message:

```text
Archive post-rebuttal revision requirements
```

Scope:

- Add the author-visible post-rebuttal feedback archive.
- Add this revision plan.
- Do not modify the paper.

Files:

- `rebuttal/reviews/post-rebuttal-feedback-2026-10-14.md`
- `rebuttal/reviews/revision-plan.md`

### 1. Fix surface typos and inconsistent notation

Proposed commit message:

```text
Fix reviewer-reported typos and notation
```

Scope:

- Fix the punctuation issue reported by Reviewer C.
- Verify that the reported `z`/`z+1` occurrence is corrected.
- Introduce term-level nondeterministic choice `e_1 \oplus e_2` before its first use.
- Correct Figure 6(b)'s parameter to the angelic type `x:[nu:int | top]`.
- Correct the `merge` safety signatures so that their inputs are refined by `sorted(nu)` rather than `top`.
- Unify the presentation of the primitive-operator typing function `Ty` and the operator context `Phi`.
- Fix other unambiguous spelling, formatting, and surface-notation problems reported by the reviewers.

Exclusions:

- Do not modify `T-Match`, structural rules, or Figure 6(a).
- Do not make explanatory changes that alter the meaning of a rule or example.

Likely files:

- `sections/1-intro.tex`
- `sections/3-typing.tex`
- `sections/4-logic.tex`
- `sections/5-extension.tex`
- `sections/6-case.tex`

### 2. Correct structural rules and context-subtyping prose

Proposed commit message:

```text
Correct derived structural rules
```

Scope:

- Derive `T-Frame`, `T-Weakening`, and `T-Exchange` from `T-CtxSub` again from first principles.
- Resolve the reported `Gamma_1`/`Gamma_2` issue in `T-Weakening`.
- Correct the reported `subset`/`superset` statement.
- Update corresponding explanations and supplemental proofs.

Risk:

- These are small textual changes but have formal meaning; no replacement will be made until it has been checked against the semantic definition of `CtxSub`.

Likely files:

- `sections/3-typing.tex`
- Relevant files under `sections/tech/`

### 3. Repair the T-Match rule and examples

Proposed commit message:

```text
Repair T-Match branch indexing and contexts
```

Scope:

- Give reachable and unreachable branches explicit, unambiguous index sets.
- Stop using the same metavariable as both a branch index and the bound on the reachable prefix.
- Explicitly include constructor-parameter bindings in the context used to type each reachable branch body.
- Unify the notation for fully applied constructors.
- State clearly whether branch reordering is a formal operation or a presentation convention.
- Update both pattern-matching examples.
- Update and check the `T-Match` case of the metatheory.

Risk:

- This is a formal rule change and must be reviewed independently of typo fixes.

Likely files:

- `sections/3-typing.tex`
- Relevant files under `sections/tech/`

### 4. Clarify the foundational contribution

Proposed commit message:

```text
Clarify the paper's foundational contribution
```

Scope:

- Explain precisely what is unified by the type system.
- Emphasize that demonic and angelic modalities can be freely combined in one type, context, and judgement.
- Explain why independence and entanglement become central when safety and reachability are mixed.
- Distinguish the foundational contribution from a concrete automated verifier.
- Align the introduction and conclusion with the characterization accepted by the reviewers.

Likely files:

- `sections/1-intro.tex`
- `sections/9-conclusion.tex`

### 5. Expand practicality and algorithmic limitations

Proposed commit message:

```text
Expand discussion of practicality and automation
```

Scope:

- Incorporate the promised discussion of practicality into Section 7.
- Explain the obstacles to a syntax-directed algorithm: bunch construction, rule choice, polarity changes, semantic subsumption, and quantifier alternation.
- Explain how restricted fragments may recover decidability or efficient verification.
- Discuss both automated inference and interactive verification as future directions.
- Avoid claiming that the current paper supplies a typing algorithm.

Likely files:

- `sections/7-discussion.tex`

### 6. Clarify selected typing examples

Proposed commit message:

```text
Clarify typing examples and totality assumptions
```

Scope:

- Describe `T-Let` as simulating ordinary let typing inside a substructural system.
- Add a concise datatype-constructor substitution example.
- Explain that precise intermediate branch contexts in the declarative examples may be manifested through semantic subsumption.
- Clarify how context sums can occur in a type context as well as a result type.
- Make the distinction between the inner entangled arrow and outer independent arrow in the nested-application example more direct.
- Explain why the system assumes totality and why divergence complicates an angelic top type.

Exclusions:

- Do not add the long rebuttal discussion about dropping `x`; the current introduction already identifies the judgement as invalid and explains the dependency problem.
- Do not add explanations for questions already answered directly by existing syntax or cross-references.

Likely files:

- `sections/2-overview.tex`
- `sections/3-typing.tex`

### 7. Clarify capability algebra and Kripke neutrality

Proposed commit message:

```text
Clarify capability refinement and Kripke neutrality
```

Scope:

- Expand the definitions of capability domain, projection, and compatibility.
- Use a compact capability example to compare subset, superset, and refinement orders.
- Explain why the refinement order is the common approximation-neutral component needed by both modalities.
- Reconcile the new explanation with the existing capability diagram instead of duplicating it.

Likely files:

- `sections/4-logic.tex`

### 8. Clarify binding references and semantic subsumption

Proposed commit message:

```text
Clarify binding references and semantic subsumption
```

Scope:

- Add a concrete explanation of why the binding-reference operator substitutes a value into its body after taking a fiber.
- Clarify the denotations of entangled and independent context composition.
- Explain why the direction of `CtxSub` is reversed by the negative position of the typing context.
- Explain the role of projection to `FV(e) union FV(tau)`.
- Clarify the existing metatheory without introducing unnecessary new theorems.

Likely files:

- `sections/4-logic.tex`
- Relevant files under `sections/tech/` if explanatory statements affect proof references

### 9. Compare with Unno et al. and sharpen novelty

Proposed commit message:

```text
Compare context types with Unno et al.
```

Scope:

- Add the POPL 2017 work of Unno, Satake, and Terauchi.
- Distinguish existence of one successful execution from coverage of every value satisfying an angelic qualifier.
- Explain why a flat context cannot distinguish the intended entangled and independent capabilities represented by `C_en` and `C_dis`.
- Use the `div` specification to illustrate the absence of an independence constructor in their system.
- State the contributions beyond standard bunched typing: mixed refinement modalities, treatment of duplicated variables, reachability-aware pattern matching, and the binding-reference operator.
- Keep only the minimum examples needed to support these comparisons.

Likely files:

- `sections/8-related.tex`
- `bibliography.bib`

### 10. Correct Figure 6(a)'s may-must specification

Proposed commit message:

```text
Correct the Figure 6(a) may-must specification
```

Scope:

- Replace the invalid original type with the agreed corrected specification.
- Remove the claim that an angelic singleton qualifier leaves no room for entanglement.
- Explain that the original type constrained the marginal coverage of `x` and `y` but did not ensure that their witnesses occurred together.
- Show why Reviewer B's capability satisfies the original parameter types.
- Show why the corrected type rejects that capability or otherwise ensures the required joint witnesses.
- Recheck that the example still demonstrates that may-analysis information helps establish a must-analysis result.
- Check the corrected type directly against the type denotation before changing the prose.

Current design discussion:

- An independent second arrow is sufficient but globally forbids dependence of `y` on `x`.
- A dependent qualifier referring to `x` may express only the conditional joint coverage required by the example.
- The final syntax and qualifier will be chosen from the already discussed alternatives by checking their exact denotations.

Likely files:

- `sections/6-case.tex`
- Any appendix material that repeats the example

### 11. Add key case-study typing derivations

Proposed commit message:

```text
Add key case-study typing derivations
```

Dependency:

- This commit follows the Figure 6(a) correction so that no derivation is written for a known-invalid specification.

Scope to determine with the authors:

- Decide which judgments from Figure 6(a), Figure 6(b), the BST generator, and `merge` should be expanded.
- For each selected derivation, record the target judgment, principal typing rules, intermediate contexts/types, and semantic-subsumption obligations.
- Explain how the recursive `merge` type produced by `T-Fix` is transformed by subsumption into the type used by the incorrectness case study.
- Put concise proof skeletons in the main paper and move lower-level obligations to the appendix if needed.

Required author input:

- The intended derivation skeletons or, at minimum, the selected target judgments and key intermediate types.
- Which subsumption steps should be treated as semantic-oracle obligations.
- Which details belong in the main paper versus the appendix.

The derivations will not be invented solely from the desired final signatures: the declarative system permits multiple context partitions and intermediate refinements, and the paper should document the derivations intended by the authors.

## Responses That Do Not Require Paper Changes

The following rebuttal answers are retained as clarifications and are not independently turned into revision tasks:

- Sources of angelic bindings in a context.
- Datatypes such as lists being base types, already shown in the syntax.
- Semantic subtyping being defined in Section 4 rather than Figure 4.
- Omitted basic type annotations on recursive functions.
- The deliberate use of `{nu | nu < 4}` rather than the more precise singleton `{nu | nu = 3}`.
- The definition of `r_4`, which is already present in the capability diagram.
- Determinism of the core language, already stated when the language is introduced.
- Reviewer B's proposed dropping of `x` in the introductory counterexample.
- The detailed reduction used in the rebuttal to distinguish the nested-application example; only the existing prose needs tightening.

## Final Integration Work

After all content commits have been approved:

1. Compile and visually inspect the complete paper and appendix.
2. Audit every explicit promise in `rebuttal/reviews/rebuttal.md` against the final source.
3. Audit every mandatory item in `post-rebuttal-feedback-2026-10-14.md`.
4. Prepare a detailed description of changes.
5. Generate and inspect a `latexdiff` version against the original submission.
6. Remove anonymity and apply the final publication metadata only when the camera-ready instructions are available.
