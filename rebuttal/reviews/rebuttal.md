## Overview

We thank the reviewers for their detailed comments and suggestions.

We begin by clarifying the concerns shared by all reviewers, namely, the practicality of our system and the algorithmic challenges raised by its highly concise formulation. We then present a detailed changelist, and conclude with detailed responses to the questions raised by individual reviewers.

## Shared Concern: Motivation and Practicality

We first clarify the main motivation and contribution of this paper. Our primary goal is to provide a foundational type theory that unifies safety and reachability verification within a functional language. Combining safety (may-style) and reachability (must-style) reasoning has been explored for many years, and prior work has shown that the two can facilitate each other [4, 17] given a framework that supports both. However, to the best of our knowledge, there is no existing unified type-based framework that supports freely combining safety (the demonic modality) and reachability (the angelic modality) as first-class features. Moreover, while safety and reachability verification have each been studied extensively on their own, there is no foundational type theory that clearly provides the semantics of these two verification modalities.

As our focus is on presenting a unified foundational theory, we do not consider a concrete typing algorithm or mechanisms related to automated reasoning (as noted by Reviewers A and C), as evidenced
by our subsumption rule, which is substantially more powerful than those of standard refinement type systems (Reviewer B). That said, we believe our type system has a number of practical benefits as the demonstrated by the case studies given in Section 6.  Moreover, prior work such as [50] identifies restricted instantiations of this general framework (e.g. function parameter types may only be demonic) for which efficient typing algorithms exist.  Developing typing algorithms for context types under its full generality is an interesting and challenging direction for future work.

## Summary of Proposed Changes

Concretely, we propose to implement the following changes in the revision, in order to clarify the issues discussed above and to address the specific criticisms posed by the reviewers below:

- We will provide additional discussion related to motivation and practicality to Section 7 (all reviewers).

- We will clarify the explanation of our examples and metatheorems, addressing the specific questions raised by the reviewers. Specifically, we will provide key typing derivations in our case studies (Reviewer B).

- We will provide a comparison with Unno et al.'s POPL 2017 paper in Section 8 (Reviewer B); we thank the reviewer for bringing this work to our attention.

- We will fix all typos and formatting problems identified by the reviewers.

## Responses to Specific Questions

#### Reviewer A

- Q: Why choose ⊑ as the Kripke order instead of ⊆ or ⊇ ?

- A: For a traditional safety verification framework like refinement types, the ⊇ relation *plus* the ⊑ relation is the corresponding Kripke order. For example, consider the following 3 capabilities (sets of assignments):

```
R1 := {[x = 1], [x = 2]} and R2 := {[x = 1]} and R3 {[x = 1; y = 3], [x = 2; y = 4]}
```

We have R1 ⊇ R2 and R1 ⊑ R3 (since the projection of R3 onto the domain of R1, i.e., `{x}`, is the same as R1). For safety verification, from `R1 |= Over(1 <= x <= 2)`, we can have `R2 |= Over(1 <= x <= 2)` and `R3 |= Over(1 <= x <= 2)` via Kripke monotonicity. However, when we shift to reachability verification, although `R1 |= Under(1 <= x <= 2)` still holds, we cannot derive `R2 |= Under(1 <= x <= 2)` since `x = 2` is not reachable. In this case, reachability verification should choose the ⊆ relation *plus* the ⊑ relation as the Kripke order. On the other hand, the ⊑ relation always holds for both safety and reachability verification, i.e., both `R3 |= Over(1 <= x <= 2)` and `R3 |= Under(1 <= x <= 2)` hold. Thus, we choose the maximal common part of the Kripke orders of safety and reachability verification, i.e., ⊑, to support both of them. The ⊑ relation is called "neutrality", since it doesn't lean toward ⊇ or ⊆.

- Q: Second example on page 13 (also, two detailed questions for section 3, and a later question for p. 10)

- A: As mentioned on line 567, the rule T-Match only types the branches that are *reachable*, instead of all branches. The reachable constraint is `Γ𝑖 ⊢ 𝑑𝑖 (𝑦) : {𝜈: 𝑏 | 𝜈 = 𝑣}⊓[𝜈: 𝑏 | 𝜈 = 𝑣]` on line 481; the unreachable branches are with index `j`, and the combination of `i` and `j` covers all `n` branches (`𝑗 ∈ (𝑖, 𝑛]`). Here the `i` mixes "the index of reachable branches" and "the maximal bound of reachable branches"; the `d_j y_j` has no difference from `d_i(ȳ)`, and we will fix it in the revision.

Notice that the first branch of the program on line 614 is not reachable, since `𝑥:{𝜈: nat | 𝜈 > 0}` requires that `x` cannot be `0`, while the reachability constraint requires `𝑥:{𝜈: nat | 𝜈 > 0} |- 0 : {𝜈: nat | 𝜈 = x}`, which is impossible. Thus, we use the right-hand side type `{𝜈: nat | 𝜈 ≠ x}` at L613 to indicate unreachability. The purpose of this example is to demonstrate how context types enable type-checking of unreachable paths.  BTW, `y` is not used in this example, although it can be used in general and is required by the typing rule; thus we add it.

- Q: p. 9, "of base types (b)": what is the type of datatypes such as lists?

- A: As mentioned on line 399, they are also base types.

- Q: p. 10, Figure 4 header: the relations Γ ⊢ τ <: τ and Γ ≤_X Γ are not defined in this figure.

- A: As mentioned on lines 511 - 521, the detailed definition is provided in Sec. 4.

- Q: p. 10, T-Fix: what is the relation ν ≺ x, and why is it needed?

- A: As mentioned on lines 545 - 546, it is the "well-founded relation" used to prove the termination of recursive functions, which is used in most refinement type systems.

- Q: p. 10, T-Fix: the type of f is missing in fix f.

- A: As mentioned on line 429, we omit basic type annotations. The type of f here is `b → ⌊𝜏⌋`.

- Q: p. 11, "T-Let instead directly combines this 'duplicate-then-consume' pattern": isn't this just regular typing, in contrast to affine/linear types?

- A: You are right; more precisely, we simulate a normal let typing in a substructural type system.

- Q: p. 11, "we require all well-typed terms to be total": why?

- A: It follows the setting of other refinement type systems [50]. Technically, the reachability of a partial function (e.g., looping forever) means that `[𝜈: 𝑏 | ⊤]` doesn't cover all situations, i.e., divergence. Although we can use an option type to simulate divergence, this option would pollute the whole type system, making it unnecessarily complex, and this complexity is independent of our contribution (unifying safety and reachability verification).

- Q: the context sum in the rule for match-expressions

- A: The intuition of context sum is first discussed on line 382, although it focuses on the sum of right-hand side types. Note that our type is a "context type", which can be treated as a context directly, thus context sum can also happen within the type context. We will explain it more in the revision.

- Q: p. 13, y:{ν: nat | ν = x − 1}: this type magically appears.

- A: As is typical of declarative typing system, we assume there is an oracle that can manifest any required type for the subsumption rule.

- Q: p. 13, {ν: nat | ν < 4}: why not {ν: nat | ν = 3}?

- A: The `{ν: nat | ν < 4}` is the type we want to type-check against from the original example on line 388, where `ν < 4` and `ν > 4` can divide two branches, i.e., returning 3 and 5. In this typing derivation, we can also choose `v = 4`, although it is too precise to show that the safety type is an overapproximation.

- Q: Domain and Compatibility

- A: These definitions are standard and have the same meaning as you inferred. We provide the detailed definitions in Sec. D of the supplemental materials. We will add more explanation in the revision.

- Q: p. 16, r4: this is not defined.

- A: r4 is defined on the right-hand side on line 742.

- Q: p. 18, CtxSub

- A: The direction follows the intuition of the Kripke order, where the capability consistent with Γ1 should be a refinement (⊑) of Γ2. The context subsumption T-CtxSub puts the context in a negative position, reversing the direction from the type subsumption rule. This is counterintuitive, but necessary; we will elaborate on its rationale in the revision.

- Q: p. 18, "The operator context Φ"

- A: The operator context provides the context types for primitive operators. We mention it on line 566 but call it the auxiliary function `Ty`. We will fix this inconsistent presentation in the revision.

- Q: every term reduces to (at most) one value under any particular environment

- A: This is a theorem for a deterministic language, since a term cannot reduce to two (or more) values.

- Q: the ⊕ operator

- A: As mentioned in the footnote on line 979, it is the nondeterministic choice operator; `𝑒1 ⊕ 𝑒2` is syntactic sugar for `if genbool ( ) then 𝑒1 else 𝑒2`. We will lift it to line 934 in the revision.

- Q: "The base cases (lines 3–4) type-check"

- A: There is a typo where the parameter types on line 1094 and line 1106 should be `sorted(𝜈)` instead of `⊤`, consistent with the explanations given on lines 1113 - 1117. We will fix it in the revision.

- Q: The source of angelic types.

- A: You are right, the source of a true angelic context (non-singleton) must be external in a pure deterministic language. External means "a tester can angelically execute the pure program", or "a human can provide an angelic context to reach the desirable result of a pure program".

- Q: p. 12, substitution with datatype value.

- A: For example, `(::)` can have type `𝑥:{𝜈: nat | ⊤} → 𝑦:{𝜈: nat list | ⊤} → {𝜈: nat list | head(𝜈, x) /\ tail(𝜈, y)} ⊓ [𝜈: nat list | head(𝜈, x) /\ tail(𝜈, y)]` where `head` and `tail` indicate the head element and tail list of a list. When the value is `[x = 1; y = [1;2]]`, the result type qualifier will be `head(𝜈, 1) /\ tail(𝜈, [1;2])`, where `𝜈` is equal to `[1;1;2]`.

- Q: Figure 6 (b)

- A: The parameter type on line 6 of Figure 6 (b) should be the angelic type `x:[𝜈: int | ⊤]`; we will fix this typo in the revision.

#### Reviewer B

- Q: total functions and unary recursive functions constraints.

- A: Restricting to total functions follows the setting of other refinement type systems [50]. The reachability of a partial function (e.g., one that diverges) means that `[𝜈: 𝑏 | ⊤]` doesn't cover all situations since divergence is not a value. Although an option type could simulate divergence, this would pollute the type system with complexity orthogonal to our central contribution. Restricting to unary recursive functions is a design choice to keep this foundational theory elegant; the system could also be extended with a well-founded measure function like fixpoint in Rocq, where the measurement can be a ghost parameter.

- Q: relationship with Unno's POPL'2017 paper.

- A: Unno et al. also combine universal and existential reasoning, but their existential modality (`{v:b∣ϕ}∃∃`) has a different meaning from our angelic refinement (`[v:b∣ϕ]`).  Unno et al.'s existential modality `{v:b|ϕ}∃∃` means "there exists some execution result satisfying ϕ", whereas our angelic refinement [v:b|ϕ] means "every value satisfying ϕ is reachable" — a strictly stronger guarantee. These are different specifications and the former cannot substitute for the latter when full coverage of reachable values is required.  More fundamentally, Unno et al.'s system uses a flat typing context with no mechanism to track independence or entanglement.   For example,

```
x : ∃ nat, y : ∃ nat ⊢ e : {v:b | φ}
means ∃x. nat(x) ∧ ∃y. nat(y) ∧ φ(x,y)
```

Thus, Unno's approach cannot distinguish between "entangled" and "independent" contexts, like `C_en` and `C_dis` on lines 259 - 261. The `C_en` can only be simulated in a precise (no approximation) style: `x : ∃ nat, y : ∀ {ν : nat | ν = x + 1} ⊢ e : σ`. Even `C_dis` cannot be expressed with `x : ∃ nat, y : ∃ nat ⊢ e : σ`, which means "there exists an assignment of `x` and `y` that makes `e : σ` hold". As another example, our introductory `div` example shown at L143 is assigned type:

```
 ⊢ div : x:[ν: nat | ν > 0] −∗ y:[ν: nat | ν > 0] −∗ [ν: nat | ν > 0]
```
The −∗ function type asserts that x and y are chosen independently, which is what enables the reachability guarantee: for every independent pair of positive inputs, div can produce every positive number. Unno et al. have no −∗ constructor — their system has no way to assert that function arguments are independent of the closure context — so this type is simply inexpressible in their framework.

As a further illustration, consider the judgement:
```
  x : ∃ nat, y : ∃ nat ⊢ x - y : {ν : nat | ν = 0}
```

The context `{[x = 0; y = 0]}` can satisfy Unno's semantics; however, it is not valid for either the entangled context (`x:{ν : nat | ⊤}, y:{ν : nat | ⊤}`) or the independent context (`x:{ν : nat | ⊤} * y:{ν : nat | ⊤}`) because neither permits the angelic choice to collapse to a single environment.

- Q: Example on L82: do the subsumption rules allow dropping the binding for x?
  
- A: Note first that this example does not use the function type constructors (→ or −∗) defined in our system — it illustrates what goes wrong in a naive system that adds angelic and demonic modalities without bunched context structure. The failing judgement shows that such a system would be unsound, motivating our design.  In other words, this example shows a typing judgement that should fail (since we can find the counterexample) but doesn't fail within *an ill-formed type system unifying safety and reachability but not considering entanglement*.

Within our system, the subsumption rules do not permit dropping x's binding, precisely because the comma context structure prevents it. The context `x:[ ν: nat | ν > 0], f:(...)` evaluates f's type under a scope that includes x (by WfComma), creating a semantic dependency in the capability denotation between f's angelic choices and x's value. Dropping x via T-CtxSub would require a capability projection that loses this dependency, and no such projection satisfies the context subtyping condition CtxSub. This is exactly the work the comma structure is designed to do — distinguishing this failing judgement from one using ∗, where x and f would be independent and the weakening would be valid.

- Q: Example on Figure 6(a).

- A: Notice that the parameter type on line `6` in Figure 6(a) requires `x:[𝜈: int | 𝜈 = 0]` and `y:[𝜈: int | 0 ≤ 𝜈 ≤ 10]`. Here `x` is a singleton proposition, thus there is no space for "entanglement". Thus, when `x = 0`, `y` must reach `10` and also a value less than `10`. In general, the singleton type qualifier can unify entanglement and disjointedness, which is the key intuition we used in Sec. 5 for persistency.

- Q: Incorrectness verification case study

- A: You are right, the constraint on the first parameter can be worked around by the subsumption rule, as we mentioned on line 550. The key typing derivation will be added in our revision.

- Q: Novelty of type system compared with bunched typing, leaving aside the subsumption rules.

- A: The type and context subsumption rules reflect our semantic foundation (e.g., capability algebra), which supports using bunched typing to deal with variable entanglement. Even leaving them aside, our system has several novel elements.  First, we solve the duplicated-variables problem in a bunched context (L458-462, L491-494). Second, the T-Match rule distinguishes reachable branches and unreachable branches to unify both safety and reachability verification in the presence of pattern matching, a non-trivial extension of standard bunched typing.  Third, the binding reference operator x▷P in the context logic (Definition 4.3) is a novel connective needed to handle dependent qualifiers that refer to specific variable bindings in the current capability which has no no obvious counterpart in prior BI-based systems.


#### Reviewer C

- Q: L106: How different is this from the example on the previous page

- A: The counterexample `f = 𝜆𝑦.𝑥 − 𝑦` does not apply to the nested application, λf.f(f x). Consider:

```
𝑥:[𝜈: nat | 𝜈 > 0] ⊢ 𝜆𝑓 .𝑓(𝑓 𝑥)
and f = 𝜆𝑦.𝑥 − 𝑦
```

We will have:

```
let 𝑥 = 𝑒𝑥 in (𝜆𝑓 .𝑓(𝑓 𝑥)) (𝜆𝑦.𝑥 − 𝑦) →∗ 
let 𝑥 = 𝑒𝑥 in (𝜆𝑦.𝑥 − 𝑦) (𝑥 − 𝑥) →∗
let 𝑥 = 𝑒𝑥 in (𝜆𝑦.𝑥 − 𝑦) 0 →∗
let 𝑥 = 𝑒𝑥 in 𝑥 →∗ all positive values
```

which is not a counterexample.  Nested application introduces a genuinely different and subtler failure mode as we discuss in the paragraph starting at L101: the intermediate result f x may depend on f's closure, making it an invalid argument for the outer application of f when f has the fully independent type −∗. This is why the paper requires f to have the entangled type → rather than −∗ for the nested application to type-check. We will clarify this distinction more explicitly in the revision.

- Q: Fig. 4 gives only rules to derive the typing relation (not subtyping).

- A: As mentioned on lines 512 - 514, our declarative type system uses semantic subtyping, where details are provided in Sec. 4.

- Q: T-Match rule

- A: As mentioned on line 576, the rule T-Match only types the branches that are *reachable*, instead of all branches. The reachable constraint is `Γ𝑖 ⊢ 𝑑𝑖 (𝑦) : {𝜈: 𝑏 | 𝜈 = 𝑣}⊓[𝜈: 𝑏 | 𝜈 = 𝑣]` on line 481; the unreachable branches are with index `j`, and the combination of `i` and `j` covers all `n` branches (`𝑗 ∈ (𝑖, 𝑛]`); the third premise should be universally quantified over i. Here the `i` mixes "the index of reachable branches" and "the maximal bound of reachable branches"; the `d_j y_j` has no difference from `d_i(ȳ)`, and we will fix it in the revision.

- Q: Γ2​ in the premise of T-Weakening should be Γ1​? L530: "subset" -> "superset"; L885: z -> z+1

- A: You are right, we will fix it in the revision.

- Q: L698: Why do you substitute v for x? I thought Fib(r,[x↦v]) would give x's value.

- A: It is different. Consider `𝑥 ▷ (x < y <= 3)` which means that "for each assignment of x, y is in the range `(x, 3]`". Then, we know `{[x = 1; y = 2], [x = 1; y = 3]}` is a capability that models this formula. However, if we don't replace the `x` in `P`, we need to show `{[x = 1; y = 2], [x = 1; y = 3]} |= x < y <= 3`. Notice that `[x = 0; y = 2]` also satisfies `x < y <= 3`, according to the semantics of atom on line 694, the atomic predicate is "neutral" (no overapproximation, no underapproximation), thus `[x = 0; y = 2]` must be included in the capability, which is inconsistent with our original intention. The issue here is that even if `x` in `Fib(r,[x↦v])` is singleton-valued, it still has a complicated Kripke semantics, and cannot be treated as "give x's value" in ordinary logic. Thus, we should directly instantiate `x` in P.

- Q: L938: ⊕ at the term level hasn't been introduced

- A: As mentioned in the footnote on line 979, it is the nondeterministic choice operator; `𝑒1 ⊕ 𝑒2` is syntactic sugar for `if genbool ( ) then 𝑒1 else 𝑒2`. We will lift it to line 934 in the revision.
