## Overview

We thank the reviewers for their detailed comments and suggestions.

We begin by clarifying the concerns shared by all reviewers, namely, the practicality of our system and the algorithmic challenges raised by its highly concise formulation. We then present a detailed changelist, and conclude with detailed responses to the questions raised by individual reviewers.

## Shared Concern: Motivation and Practicality

We first clarify the main motivation and contribution of this paper. Our primary goal is to provide a foundational type theory that unifies safety and reachability reasoning within a functional language. Combining safety (may-style) and reachability (must-style) reasoning has been explored for many years, and prior work has shown that each can fruitfully inform the other [4, 17] in a framework that supports both. However, to the best of our knowledge, there is no existing unified type-based framework that supports freely combining safety (the demonic modality) and reachability (the angelic modality) as first-class features. Moreover, while safety and reachability verification have each been studied extensively on their own, there is no *foundational* type theory that cleanly provides an integrated semantics for both modalities.

As the focus of this work is the development of this unified, foundational type theory, we do not consider a concrete typing algorithm or other mechanisms for automated reasoning (noted by Reviewers A and C). This is also evidenced
by our subsumption rule, which is substantially more powerful than those of standard refinement type systems (Reviewer B). That said, we believe the case studies given in Section 6 demonstrate some of the potential practical benefits of these foundations.  Furthermore, prior work such as [50] has shown that restricted instantiations of this general framework (e.g. function parameter types may only be demonic) admit efficient verification procedures. Identifying other variants which similarly facilitate automated reasoning and developing a typing algorithm for context types in their full generality are interesting (and challenging!) directions for future work.

## Summary of Proposed Changes

Concretely, we propose to implement the following changes in the revision, in order to clarify the issues discussed above and to address the specific criticisms posed by the reviewers below:

- We will expand the discussion of the motivation for and practicality of our type system in Section 7 (all reviewers).

- We will clarify the explanation of our examples and metatheorems, addressing the specific questions raised by the reviewers, including providing key typing derivations in our case studies (Reviewer B).

- We will provide a comparison with Unno et al.'s POPL 2017 paper in Section 8 (Reviewer B); we thank the reviewer for bringing this work to our attention.

- We will fix all typos and formatting problems identified by the reviewers.

## Responses to Specific Questions

### Reviewer A

- Q1: How can angelic types be introduced into the context?

- A1: As you note, there are two ways that (non-singleton) angelic types can be added to the context: when typing a function with an angelic parameter or through the application of a random function. In a pure, deterministic language, an angelic type binding is a stand-in for some angelic decision maker that is external to a program, e.g., a tester or a human that can angelically supply the "right" inputs to a pure program.

- Q2: Typing rule for `match`:

- A2: The T-Match rule only types the branches that are *reachable*, instead of all branches (line 567). Under a typing context in which `i` branches are reachable, this rule implicitly reorders the branches so that all the reachable branches come first; the first premise of the constraint then encodes their reachability `Γ𝑖 ⊢ 𝑑𝑖 (𝑦) : {𝜈: 𝑏 | 𝜈 = 𝑣}⊓[𝜈: 𝑏 | 𝜈 = 𝑣]` (line 481). Similarly, the third premise of the rule encodes the  unreachablity of the remaining (n - i) branches, which are indexed by (`𝑗 ∈ (𝑖, 𝑛]`).  Taken together, the combination of both sets of branches cover all `n` constructors.

As an example, notice that the first branch of the program on line 614 is not reachable, since the binding `𝑥:{𝜈: nat | 𝜈 > 0}` in the context stipulates that `x` cannot be `0`.  To apply T-Match, we implicitly "swap" the two branches, so that the (reachable) `S y` case comes first. We can type this branch using the first premise (line 612), and type the body of the branch under a context extended with a binding for the pattern variable (lines 610-611). The reachability constraint encoded by the first premise (`𝑥:{𝜈: nat | 𝜈 > 0} |- 0 : {𝜈: nat | 𝜈 = x} ⊓ [𝜈: nat | 𝜈 = x]`) cannot be satisfied by the `0` branch, so we use the third premise of T-Match can account for this unreachable branch (`... |- ... : {𝜈: nat | 𝜈 ≠ x}` on L613).

- Q2a: Is i is free in the third premise of T-Match?

- A2a: Here, i implicitly ranges over all the reachable branches.

- Q2b: In T-Match, it appears that e_i is typecheck without information about y_i, is this ok?

- A2b: Each $\Gamma_i$ implicitly includes bindings, ȳ, for the parameters of the ith constructor d_i. This is guaranteed by the first premise of T-match, which types d_i(ȳ). We will explicitly include those bindings in the next iteration of the paper.

- Q2c: Why is the notation d_j y_j different from d_i(ȳ) (parentheses)?

- A2c: `d_j ȳ_j` and `d_i(ȳ)` both denote a fully applied datatype constructor; we will unify the notation in the revision.

- Q3: The substitution of the variable for the value in the type is not clear when the value is a datatype. Could you clarify this?

- A3: As an example, `(::)` can have the type `𝑥:{𝜈: nat | ⊤} → 𝑦:{𝜈: nat list | ⊤} → {𝜈: nat list | head(𝜈, x) /\ tail(𝜈, y)} ⊓ [𝜈: nat list | head(𝜈, x) /\ tail(𝜈, y)]` where `head` and `tail` are datatype selectors return the head element and tail list of a list, respectively. The type of  `1 :: ([1;2])`, i.e., [1; 1;3],  is thus `{𝜈: nat list | head(𝜈, 1) /\ tail(𝜈, [1;2])`, which is equivalent to `{𝜈: nat list | 𝜈 = [1;1;2]}`.

- Q4: In Figure 6 (b), to apply x to g you need to prove {ν: int | ⊤} <: [ν: int | ⊤]. Is this true? Section 2 states that the modality can only be switched for singleton qualifiers or in the trivial cases.

- A4: This is a typo: the parameter on line 6 of Figure 6 (b) should have the angelic type `x:[𝜈: int | ⊤]`; we will fix this typo in the revision.

- Q5: Is the calculus implementable, and if so, what would a syntax-directed version look like?

- A5: As discussed above, the existence of a complete typing algorithm for context types in their full generality is an open question that we plan to explore in future work.

#### Presentational Concerns and Additional Questions:

We thank the reviewer for identifying several points of confusion, which we attempt to clarify below. We plan to address all of these presentational concerns in the next version of the paper.

- Q: Why choose ⊑ as the Kripke order instead of ⊆ or ⊇ ?

- A: For a traditional safety verification framework like refinement types, the ⊇ relation *plus* the ⊑ relation is the corresponding Kripke order. For example, consider the following 3 capabilities (sets of assignments):

```
R1 := {[x = 1], [x = 2]} and R2 := {[x = 1]} and R3 {[x = 1; y = 3], [x = 2; y = 4]}
```

We have R1 ⊇ R2 and R1 ⊑ R3 (since the projection of R3 onto the domain of R1, i.e., `{x}`, is the same as R1). For safety verification, from `R1 |= Over(1 <= x <= 2)`, we can have `R2 |= Over(1 <= x <= 2)` and `R3 |= Over(1 <= x <= 2)` via Kripke monotonicity. However, when we shift to reachability verification, although `R1 |= Under(1 <= x <= 2)` still holds, we cannot derive `R2 |= Under(1 <= x <= 2)` since `x = 2` is not reachable. In this case, reachability verification should choose the ⊆ relation *plus* the ⊑ relation as the Kripke order. On the other hand, the ⊑ relation always holds for both safety and reachability verification, i.e., both `R3 |= Over(1 <= x <= 2)` and `R3 |= Under(1 <= x <= 2)` hold. Thus, we choose the maximal common part of the Kripke orders of safety and reachability verification, i.e., ⊑, to support both of them. The ⊑ relation is called "neutrality", since it doesn't lean toward ⊇ or ⊆.

- Q: p. 9, "of base types (b)": what is the type of datatypes such as lists?

- A: As mentioned on line 399, These are also base types.

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

- A: This is indeed a typo: the parameter types on line 1094 and line 1106 should be `sorted(𝜈)` instead of `⊤`. The explanations on lines 1113 - 1117 are consistent with the correct signature (`sorted(𝜈)`). We will fix this in the revision.

- Q: Figure 6 (b)

- A: The parameter type on line 6 of Figure 6 (b) should be the angelic type `x:[𝜈: int | ⊤]`; we will fix this typo in the revision.

### Reviewer B

- Q1: Could you clarify any misunderstandings that I have with the examples mentioned in my review?

- A1:

	+ Q1a: Example on L82: do the subsumption rules allow dropping the binding for x?

	+ A1a: Note first that this example does not use the function type constructors (→ or −∗) defined in our system — it illustrates what can go wrong in a system that combines angelic and demonic modalities without using a bunched context structure. The failing judgement shows that such a system would be unsound, motivating our design.  In other words, this example shows a typing judgement that should fail (since we can find the counterexample) but doesn't fail within *an hypothetical type system that unifies safety and reachability without considering entanglement*.

	Within our system, the subsumption rules do not permit dropping `x`'s binding, precisely because the comma context structure prevents it. The context `x:[ ν: nat | ν > 0], f:(...)` evaluates `f`'s type under a scope that includes `x` (by WfComma), creating a semantic dependency in the capability denotation between `f`'s angelic choices and `x`'s value. Dropping `x` via T-CtxSub would require a capability projection that loses this dependency, and no such projection satisfies the context subtyping condition (CtxSub). This is exactly the work the comma structure is designed to do — distinguishing this failing judgement from one that uses  ∗, where `x` and `f` would be independent and the weakening would be valid.

	+ Q1b Example in Figure 6(a).

	+ A1b: Notice that the parameter type on line 6 in Figure 6(a) requires `x:[𝜈: int | 𝜈 = 0]` and `y:[𝜈: int | 0 ≤ 𝜈 ≤ 10]`. Here `x` is a singleton proposition, thus there is no space for "entanglement". Thus, when `x = 0`, `y` must reach `10` and also a value less than `10`. In general, the concepts of entanglement and disjointedness are meaningless for singleton type qualifiers, as they do not contain any choices (dependent or otherwise).

	+ Q1c: Incorrectness verification case study

	+ A1c: You are right, the constraint on the first parameter can be worked around by the subsumption rule (mentioned on line 550). The next version of the paper will clarify this piece of the typing derivation.

- Q2: Could you explain in a little more detail the novelties of the type system in Figure 4 (e.g. compared to previous work on bunched typing), if we leave aside the subsumption rule?

- A2: The type and context subsumption rules fundementally depend on our semantic foundations (e.g., capability algebra), which uses bunched typing to deal with variable entanglement. Even leaving them aside, our system has several novel elements.  First, we solve the duplicated-variables problem in a bunched context (L458-462, L491-494). Second, the T-Match rule distinguishes reachable branches and unreachable branches to unify both safety and reachability verification in the presence of pattern matching, a non-trivial extension of standard bunched typing.  Third, the binding reference operator x▷P in the context logic (Definition 4.3) is a novel connective needed to handle dependent qualifiers that refer to specific variable bindings in the current capability which has no no obvious counterpart in prior BI-based system.

- Q3: Could you comment on the relationship of your work with the POPL'17 work of Unno, Satake and Terauchi?

- A3: Unno et al. also combine universal and existential reasoning, but their existential modality (`{v:b∣ϕ}∃∃`) has a different meaning than our angelic refinement (`[v:b∣ϕ]`).  Unno et al.'s existential modality `{v:b|ϕ}∃∃` means "there exists _some_ execution result satisfying ϕ", whereas our angelic refinement [v:b|ϕ] means "_every_ value satisfying ϕ is reachable" — a strictly stronger guarantee. These are different properties, and the former cannot substitute for the latter when full coverage of reachable values is required.  More fundamentally, Unno et al.'s system uses a flat typing context with no mechanism to track independence or entanglement.   For example,

```
x : ∃ nat, y : ∃ nat ⊢ e : {v:b | φ(x,y)}
means ∃x. nat(x) ∧ ∃y. nat(y) ∧ φ(x,y)
```

Thus, Unno's approach cannot distinguish between "entangled" and "independent" contexts, e.g., `C_en` and `C_dis` on lines 259 - 261. The `C_en` can only be simulated in a precise (no approximation) style: `x : ∃ nat, y : ∀ {ν : nat | ν = x + 1} ⊢ e : σ`. Even `C_dis` cannot be expressed with `x : ∃ nat, y : ∃ nat ⊢ e : σ`, which means "there exists an assignment of `x` and `y` that makes `e : σ` hold". As another example, our introductory `div` example shown at L143 is assigned type:

```
 ⊢ div : x:[ν: nat | ν > 0] −∗ y:[ν: nat | ν > 0] −∗ [ν: nat | ν > 0]
```
The −∗ function type asserts that x and y are chosen independently, which is what enables the reachability guarantee: for every independent pair of positive inputs, div can produce every positive number. Unno et al. have no −∗ constructor — their system has no way to assert that function arguments are independent of the closure context — so this type is simply inexpressible in their framework.

As a further illustration, consider the judgement:
```
  x : ∃ nat, y : ∃ nat ⊢ x - y : {ν : nat | ν = 0}
```

While the contextual capability `{[x = 0; y = 0]}` is consistent with the semantics of Unno et al's typing contexts, it is not a model of either the entangled context (`x:{ν : nat | ⊤}, y:{ν : nat | ⊤}`) or the independent context (`x:{ν : nat | ⊤} * y:{ν : nat | ⊤}`), as neither permits the angelic choice to collapse to a single environment.

#### Additional Questions:

- Q: As far as I know, there is no similar restriction to total functions in other call-by-value refinement type systems, such as Liquid Types.

- A: Restricting to total functions follows the setting of other refinement type systems [43, 55, 50]. The reachability of a partial function (e.g., one that diverges) means that `[𝜈: 𝑏 | ⊤]` doesn't cover all situations since divergence is not a value. Although an option type could simulate divergence, this would pollute the type system with complexity orthogonal to our central contribution. Restricting to unary recursive functions is a design choice to keep this foundational theory elegant; the system could also be extended with a well-founded measure function like fixpoint in Rocq, where the measurement can be a ghost parameter.

#### Reviewer C

- Q: L106: How different is this example from the one on the previous page?

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

- A: Our declarative type system uses semantic subtyping (Lines 512 - 514); the details of this where details are provided in Sec. 4.

- Q: T-Match rule

- A: As mentioned on line 576, the rule T-Match only types the branches that are *reachable*, instead of all branches. The reachable constraint is `Γ𝑖 ⊢ 𝑑𝑖 (𝑦) : {𝜈: 𝑏 | 𝜈 = 𝑣}⊓[𝜈: 𝑏 | 𝜈 = 𝑣]` on line 481; the unreachable branches are with index `j`, and the combination of `i` and `j` covers all `n` branches (`𝑗 ∈ (𝑖, 𝑛]`); the third premise should be universally quantified over i. Here the `i` mixes "the index of reachable branches" and "the maximal bound of reachable branches"; the `d_j y_j` has no difference from `d_i(ȳ)`, and we will fix it in the revision.

- Q: Γ2​ in the premise of T-Weakening should be Γ1​? L530: "subset" -> "superset"; L885: z -> z+1

- A: You are right, we will fix it in the revision.

- Q: L698: Why do you substitute v for x? I thought Fib(r,[x↦v]) would give x's value.

- A: It is different. Consider `𝑥 ▷ (x < y <= 3)` which means that "for each assignment of x, y is in the range `(x, 3]`". Then, we know `{[x = 1; y = 2], [x = 1; y = 3]}` is a capability that models this formula. However, if we don't replace the `x` in `P`, we need to show `{[x = 1; y = 2], [x = 1; y = 3]} |= x < y <= 3`. Notice that `[x = 0; y = 2]` also satisfies `x < y <= 3`, according to the semantics of atom on line 694, the atomic predicate is "neutral" (no overapproximation, no underapproximation), thus `[x = 0; y = 2]` must be included in the capability, which is inconsistent with our original intention. The issue here is that even if `x` in `Fib(r,[x↦v])` is singleton-valued, it still has a complicated Kripke semantics, and cannot be treated as "give x's value" in ordinary logic. Thus, we should directly instantiate `x` in P.

- Q: L938: ⊕ at the term level hasn't been introduced

- A: As mentioned in the footnote on line 979, it is the nondeterministic choice operator; `𝑒1 ⊕ 𝑒2` is syntactic sugar for `if genbool ( ) then 𝑒1 else 𝑒2`. We will lift it to line 934 in the revision.


[55] Niki Vazou, Anish Tondwalkar, Vikraman Choudhury, Ryan G. Scott, Ryan R. Newton, Philip Wadler, and Ranjit Jhala. 2017. Refinement reflection: complete verification with SMT. Proc. ACM Program. Lang. 2, POPL, Article 53 (January 2018), 31 pages. https://doi.org/10.1145/3158141
