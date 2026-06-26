# Related Papers: Abstracts

Abstract collection for papers potentially related to *Context Types* (POPL 2027 UnderType).

Sources: CrossRef, OpenAlex, Semantic Scholar, arXiv, and publisher PDFs where APIs lacked abstracts.
Duplicate entries from the original list (e.g. alternate DOIs for ICFP/OOPSLA reprints) have been merged.

**Total unique papers:** 64

---

## 1. Dependent Coeffects for Local Sensitivity Analysis

**Authors:** Sannier & Baillot (2026)

**Venue / Year:** Proc. ACM Program. Lang. 10(POPL) (2026)

**DOI:** [https://doi.org/10.1145/3776670](https://doi.org/10.1145/3776670)

**Abstract source:** CrossRef (10.1145/3776670)

**Abstract:**

Differential privacy is a formal definition of privacy that bounds the maximum acceptable information leakage when a query is performed on sensitive data. To ensure this property, a key technique involves bounding the query’s sensitivity (how much input variations affect the output) and adding noise to the result according to this quantity. While prior work like the Fuzz type system focuses on global sensitivity, many useful queries have infinite global sensitivity, restricting the scope of such approaches. This limitation can be addressed by considering a more fine-grained measure: local sensitivity, which quantifies output change for inputs adjacent to a specific dataset. In this article, we introduce Local Fuzz, a type system with dependent coeffects designed to bound the local sensitivity of programs written in a simple functional language. We provide a denotational semantics for this system in the category of extended premetric spaces, leveraging the recently introduced construction of a dependently graded comonad. Finally, we illustrate how Local Fuzz can lead to better differential privacy guarantees than Fuzz, both for mechanisms that rely on global sensitivity and for those that leverage local sensitivity, such as the Propose-Test-Release framework.

---

## 2. Fair Termination for Resource-Aware Active Objects

**Authors:** Dagnino, Giannini, Pun & Torrella (2026)

**Venue / Year:** APLAS 2025 (LNCS) (2026)

**DOI:** [https://doi.org/10.1007/978-981-95-3585-9_2](https://doi.org/10.1007/978-981-95-3585-9_2)

**arXiv:** [https://arxiv.org/abs/2508.15333](https://arxiv.org/abs/2508.15333)

**Abstract source:** arXiv:2508.15333

**Abstract:**

Active object systems are a model of distributed computation that has been adopted for modelling distributed systems and business process workflows. This field of modelling is, in essence, concurrent and resource-aware, motivating the development of resource-aware formalisations on the active object model. The contributions of this work are the development of a core calculus for resource-aware active objects together with a type system ensuring that well-typed programs are fairly terminating, i.e., they can always eventually terminate. To achieve this, we combine techniques from graded semantics and type systems, which are quite well understood for sequential programs, with those for fair termination, which have been developed for synchronous~sessions.

---

## 3. Finite Functional Programming

**Authors:** Arntzenius & Willsey (2026)

**Venue / Year:** FLOPS 2026 (LNCS) (2026)

**DOI:** [https://doi.org/10.1007/978-981-92-0184-6_1](https://doi.org/10.1007/978-981-92-0184-6_1)

**Abstract source:** Semantic Scholar (10.1007/978-981-92-0184-6_1)

**Abstract:**

We unify functional and logic programming by treating predicates as functions equipped with their support: the set of inputs whose output is nonzero. Datalog, for instance, is a language of finitely supported boolean functions. Finite support allows representing functions as input-output tables. Generalizing from boolean functions to other pointed sets neatly handles aggregation and weighted logic programming. We refer to the combination of finitely supported functions, represented as data, with higher order functions, represented as code, as finite functional programming. We give a simple type system to check finite support, using graded effects to check variable grounding and relevance types to model pointed sets.

---

## 4. Matrix Coeffect Algebra for Interdependent Context Requirements

**Authors:** Miyazawa & Nishizaki (2026)

**Venue / Year:** FLOPS 2026 (LNCS) (2026)

**DOI:** [https://doi.org/10.1007/978-981-92-0184-6_11](https://doi.org/10.1007/978-981-92-0184-6_11)

**Abstract source:** manual

**Abstract:**

This chapter introduces Matrix Coeffect Algebra (MCA), a novel framework designed to address the challenge of modeling interdependent contextual requirements in programming languages. Traditional coeffect systems, which track how a program interacts with its execution environment, have struggled to express dependencies between different contextual quantities. MCA overcomes this limitation by using matrix-valued annotations that can propagate constraints across components, enabling a more nuanced and accurate static analysis. The chapter explains how MCA is instantiated in the Matrix Coeffect Calculus (MCC), which extends the structural coeffect calculus by interpreting its rules over matrix domains. This allows for dependency-aware type checking, where annotations mix components in a principled way, making mutual dependencies representable within the type system. The text also introduces the Target Language for Matrix Coeffect (TLMC), a comonadic target language that operationalizes these matrix annotations, providing a clear and executable semantics for MCC programs. A key highlight is the demonstration of MCC through a flight-timetable case study, where it is used to express and statically verify interdependent constraints in a scheduling scenario.

---

## 5. On Graded Coeffect Types for Information-Flow Control

**Authors:** Liepelt, Marshall, Orchard, Rajani & Vollmer (2026)

**Venue / Year:** LNCS (Mycroft Festschrift) (2026)

**DOI:** [https://doi.org/10.1007/978-3-032-08187-2_7](https://doi.org/10.1007/978-3-032-08187-2_7)

**Abstract source:** manual

**Abstract:**

Graded types are an overarching paradigm that provides fine-grained reasoning by reflecting the structure of typing rules into a system of type annotations. A significant subset of graded type systems is that of coeffect systems, originally introduced by Petricek, Orchard, and Mycroft as a dual to effect systems, capturing the dataflow of values in a calculus by annotating variables and function types with elements of a semiring. A particularly useful instance of these graded coeffect systems is to capture security properties of data to enforce information-flow control. We examine this particular use case and give a new characterisation of a subclass of semirings which enable the key non-interference theorem of information-flow control: that less privileged observers are unable to distinguish the dependence of computations on more privileged inputs. The result relies on a logical relations proof and is mechanised in Agda. We consider its relationship to other characterisations of non-interference in the recent literature on graded types and in the historical context of coeffect and graded systems. We leverage these results for programming with security in the Granule programming language, a research language for graded types. We conclude with extensions to Granule that go beyond non-interference to declassification, leveraging graded types to control deliberate information leakage.

---

## 6. Security Reasoning via Substructural Dependency Tracking

**Authors:** Gouni, Pfenning & Aldrich (2026)

**Venue / Year:** Proc. ACM Program. Lang. 10(POPL) (2026)

**DOI:** [https://doi.org/10.1145/3776669](https://doi.org/10.1145/3776669)

**Abstract source:** CrossRef (10.1145/3776669)

**Abstract:**

Substructural type systems provide the ability to speak about                     resources                     . By enforcing usage restrictions on                     inputs                     to computations they allow programmers to reify limited system units—such as memory—in types. We demonstrate a new form of resource reasoning founded on constraining                     outputs                     and explore its utility for practical programming. In particular, we identify a number of disparate programming features explored largely in the security literature as various fragments of our unified framework. These encompass capabilities, quantitative information leakage, sandboxing in the style of the Linux seccomp interface, authorization protocols, and more. We furthermore explore its connection to conventional input-based resource reasoning, casting it as an internal treatment of the constructive Kripke semantics of substructural logics. We verify the                     capability                     ,                     quantity                     , and                     protocol                     safety of our system through a single logical relations argument. In doing so, we take the first steps towards obtaining the ultimate multitool for security reasoning.

---

## 7. Typing Strictness

**Authors:** Sainati, Cutler, Pierce & Weirich (2026)

**Venue / Year:** Proc. ACM Program. Lang. 10(POPL) (2026)

**DOI:** [https://doi.org/10.1145/3776657](https://doi.org/10.1145/3776657)

**Abstract source:** CrossRef (10.1145/3776657)

**Abstract:**

Strictness analysis is critical to efficient implementation of languages with non-strict evaluation, mitigating much of the performance overhead of laziness. However, reasoning about strictness at the source level can be challenging and unintuitive. We propose a new definition of strictness that refines the traditional one by describing variable usage more precisely. We lay type-theoretic foundations for this definition in both call-by-name and call-by-push-value settings, drawing inspiration from the literature on type systems tracking effects and coeffects. We prove via a logical relation that the strictness attributes computed by our type systems accurately describe the use of variables at runtime, and we offer a strictness-annotation-preserving translation from the call-by-name system to the call-by-push-value one. All our results are mechanized in Rocq.

---

## 8. Bean: A Language for Backward Error Analysis

**Authors:** Kellison, Zielinski, Bindel & Hsu (2025)

**Venue / Year:** Proc. ACM Program. Lang. 9(PLDI) (2025)

**DOI:** [https://doi.org/10.1145/3729324](https://doi.org/10.1145/3729324)

**Abstract source:** CrossRef (10.1145/3729324)

**Abstract:**

Backward error analysis             offers a method for assessing the quality of numerical programs in the presence of floating-point rounding errors. However, techniques from the numerical analysis literature for quantifying backward error require substantial human effort, and there are currently no tools or automated methods for statically deriving sound backward error bounds. To address this gap, we propose Bean, a typed first-order programming language designed to express quantitative bounds on backward error. Bean’s type system combines a graded coeffect system with strict linearity to soundly track the flow of backward error through programs. We prove the soundness of our system using a novel categorical semantics, where every Bean program denotes a triple of related transformations that together satisfy a backward error guarantee.                                   To illustrate Bean’s potential as a practical tool for automated backward error analysis, we implement a variety of standard algorithms from numerical linear algebra in Bean, establishing fine-grained backward error bounds via typing in a compositional style. We also develop a prototype implementation of Bean that infers backward error bounds automatically. Our evaluation shows that these inferred bounds match worst-case theoretical relative backward error bounds from the literature, underscoring Bean’s utility in validating a key property of numerical programs:             numerical stability             .

---

## 9. Flexible Type-Based Resource Estimation in Quantum Circuit Description Languages

**Authors:** Colledan & Dal Lago (2025)

**Venue / Year:** Proc. ACM Program. Lang. 9(POPL) (2025)

**DOI:** [https://doi.org/10.1145/3704883](https://doi.org/10.1145/3704883)

**Abstract source:** CrossRef (10.1145/3704883)

**Abstract:**

We introduce a type system for the                     Quipper                     language designed to derive upper bounds on the size of the circuits produced by the typed program. This size can be measured according to various metrics, including                     width                     ,                     depth                     and                     gate count                     , but also variations thereof obtained by considering only                     some                     wire types or                     some                     gate kinds. The key ingredients for achieving this level of flexibility are effects and refinement types, both relying on                     indices                     , that is, generic arithmetic expressions whose operators are interpreted differently depending on the target metric. The approach is shown to be correct through logical predicates, under reasonable assumptions about the chosen resource metric. This approach is empirically evaluated through the                     QuRA                     tool, showing that, in many cases, inferring tight bounds is possible in a fully automatic way.

---

## 10. Modal Effect Types

**Authors:** Tang, White, Dolan, Hillerström, Lindley & Lorenzen (2025)

**Venue / Year:** Proc. ACM Program. Lang. 9(OOPSLA1) (2025)

**DOI:** [https://doi.org/10.1145/3720476](https://doi.org/10.1145/3720476)

**Abstract source:** CrossRef (10.1145/3720476)

**Abstract:**

Effect handlers are a powerful abstraction for defining, customising, and composing computational effects. Statically ensuring that all effect operations are handled requires some form of effect system, but using a traditional effect system would require adding extensive effect annotations to the millions of lines of existing code in these languages. Recent proposals seek to address this problem by removing the need for explicit effect polymorphism. However, they typically rely on fragile syntactic mechanisms or on introducing a separate notion of second-class function. We introduce a novel approach based on modal effect types.

---

## 11. Non-linear communication via graded modal session types

**Authors:** Marshall & Orchard (2025)

**Venue / Year:** Information and Computation 301 (2025)

**DOI:** [https://doi.org/10.1016/j.ic.2024.105234](https://doi.org/10.1016/j.ic.2024.105234)

**Abstract source:** OpenAlex (10.1016/j.ic.2024.105234)

**Abstract:**

Session types provide guarantees about concurrent behaviour and can be understood through their correspondence with linear logic, with propositions as sessions and proofs as processes. However, a strictly linear setting is somewhat limiting since there exist various useful patterns of communication that rely on non-linear behaviours. For example, shared channels provide a way to repeatedly spawn a process with binary communication along a fresh linear session-typed channel. Non-linearity can be introduced in a controlled way in programming through the general concept of graded modal types , which are a framework encompassing various kinds of coeffect typing (describing how computations make demands on their context). This paper shows how graded modal types can be leveraged alongside session types to enable various well-known non-linear concurrency behaviours to be re-introduced in a precise manner in a type system with a linear basis. The ideas here are demonstrated using Granule, a functional programming language with linear, indexed, and graded modal types. We then define a core calculus capturing the requisite type features and our new graded modal session-typed primitives. We give an operational model and establish key properties following from the typing.

---

## 12. The Duality of λ-Abstraction

**Authors:** Choudhury & Gay (2025)

**Venue / Year:** Proc. ACM Program. Lang. 9(POPL) (2025)

**DOI:** [https://doi.org/10.1145/3704848](https://doi.org/10.1145/3704848)

**Abstract source:** CrossRef (10.1145/3704848)

**Abstract:**

In this paper, we develop and study the following perspective - just as higher-order functions give exponentials, higher-order continuations give coexponentials. From this, we design a language that combines exponentials and coexponentials, producing a duality of lambda abstraction.                   We formalise this language by giving an extension of a call-by-value simply-typed lambda-calculus with covalues, coabstraction, and coapplication. We develop the semantics of this language using the axiomatic structure of continuations, which we use to produce an equational theory, that gives a complete axiomatisation of control effects. We give a computational interpretation to this language using speculative execution and backtracking, and use this to derive the classical control operators and computational interpretation of classical logic, and encode common patterns of control flow using continuations. By dualising functional completeness, we further develop duals of first-order arrow languages using coexponentials. Finally, we discuss the implementation of this duality as control operators in programming, and develop some applications.

---

## 13. The Hidden Strength of Costrong Functors

**Authors:** Balan & Pantelimon (2025)

**Venue / Year:** EPTCS 427 (2025)

**DOI:** [https://doi.org/10.4204/EPTCS.427.10](https://doi.org/10.4204/EPTCS.427.10)

**arXiv:** [https://arxiv.org/abs/2509.13026](https://arxiv.org/abs/2509.13026)

**Abstract source:** OpenAlex (10.4204/EPTCS.427.10)

**Abstract:**

Strong functors and monads are ubiquitous in Computer Science.More recently, comonads have demonstrated their use in structuring context-dependent notions of computation.However, the dualisation of "being strong" property passed somehow unobserved so far.We argue that "being costrong" gives a different understanding of how functors can interact with monoidal structures.This work in progress aims to explore costrong functors and their natural properties, with an eye towards the semantics of computations.

---

## 14. Coeffects for MiniJava: Cf-Mj

**Authors:** Giannini & Duso (2024)

**Venue / Year:** FTfJP 2024 (2024)

**DOI:** [https://doi.org/10.1145/3678721.3686232](https://doi.org/10.1145/3678721.3686232)

**Abstract source:** OpenAlex (10.1145/3678721.3686232)

**Abstract:**

We propose an imperative Java-like calculus where declared variables can be annotated by coeffects specifying constraints on their use, e.g., affinity or privacy levels. Coeffects are heterogeneous, in the sense that different kinds of coeffects can be used in the same program. This paper extends previous work by the authors in which a functional core of a Java-like calculus was considered. Java annotations are used to identify classes implementing coeffects and coeffects decorating variable declarations. Moreover, a prototype implementation of the type and coeffect checker is given.

---

## 15. Effects and Coeffects in Call-by-Push-Value

**Authors:** Torczon, Suárez Acevedo, Agrawal, Velez-Ginorio & Weirich (2024)

**Venue / Year:** Proc. ACM Program. Lang. 8(OOPSLA2) (2024)

**DOI:** [https://doi.org/10.1145/3689750](https://doi.org/10.1145/3689750)

**Abstract source:** CrossRef (10.1145/3689750)

**Abstract:**

Effect and coeffect tracking integrate many types of compile-time analysis, such as cost, liveness, or dataflow, directly into a language’s type system. In this paper, we investigate the addition of effect and coeffect tracking to the type system of call-by-push-value (CBPV), a computational model useful in compilation for its isolation of effects and for its ability to cleanly express both call-by-name and call-by-value computations. Our main result is                     effect-and-coeffect soundness                     , which asserts that the type system accurately bounds the effects that the program may trigger during execution and accurately tracks the demands that the program may make on its environment. This result holds for two different dynamic semantics: a generic one that can be adapted for different coeffects and one that is adapted for reasoning about resource usage. In particular, the second semantics discards the evaluation of unused values and pure computations while ensuring that effectful computations are always evaluated, even if their results are not required. Our results have been mechanized using the Coq proof assistant.

---

## 16. Functional Ownership through Fractional Uniqueness

**Authors:** Marshall & Orchard (2024)

**Venue / Year:** Proc. ACM Program. Lang. 8(OOPSLA1) (2024)

**DOI:** [https://doi.org/10.1145/3649848](https://doi.org/10.1145/3649848)

**Abstract source:** CrossRef (10.1145/3649848)

**Abstract:**

Ownership and borrowing systems, designed to enforce safe memory management without the need for garbage collection, have been brought to the fore by the Rust programming language. Rust also aims to bring some guarantees offered by functional programming into the realm of performant systems code, but the type system is largely separate from the ownership model, with type and borrow checking happening in separate compilation phases. Recent models such as RustBelt and Oxide aim to formalise Rust in depth, but there is less focus on integrating the basic ideas into more traditional type systems. An approach designed to expose an essential core for ownership and borrowing would open the door for functional languages to borrow concepts found in Rust and other ownership frameworks, so that more programmers can enjoy their benefits.           One strategy for managing memory in a functional setting is through uniqueness types, but these offer a coarse-grained view: either a value has exactly one reference, and can be mutated safely, or it cannot, since other references may exist. Recent work demonstrates that linear and uniqueness types can be combined in a single system to offer restrictions on program behaviour and guarantees about memory usage. We develop this connection further, showing that just as graded type systems like those of Granule and Idris generalise linearity, a Rust-like ownership model arises as a graded generalisation of uniqueness. We combine fractional permissions with grading to give the first account of ownership and borrowing that smoothly integrates into a standard type system alongside linearity and graded types, and extend Granule accordingly with these ideas.

---

## 17. Oxidizing OCaml with Modal Memory Management

**Authors:** Lorenzen, White, Dolan, Eisenberg & Lindley (2024)

**Venue / Year:** Proc. ACM Program. Lang. 8(ICFP) (2024)

**DOI:** [https://doi.org/10.1145/3674642](https://doi.org/10.1145/3674642)

**Abstract source:** CrossRef (10.1145/3674642)

**Abstract:**

Programmers can often improve the performance of their programs by reducing heap allocations: either by allocating on the stack or reusing existing memory in-place. However, without safety guarantees, these optimizations can easily lead to use-after-free errors and even type unsoundness. In this paper, we present a design based on                     modes                     which allows programmers to safely reduce allocations by using stack allocation and in-place updates of immutable structures. We focus on three mode axes: affinity, uniqueness and locality. Modes are fully backwards compatible with existing OCaml code and can be completely inferred. Our work makes manual memory management in OCaml safe and convenient and charts a path towards bringing the benefits of Rust to OCaml.

---

## 18. Program Synthesis from Graded Types

**Authors:** Hughes & Orchard (2024)

**Venue / Year:** APLAS 2023 (LNCS) (2024)

**DOI:** [https://doi.org/10.1007/978-3-031-57262-3_4](https://doi.org/10.1007/978-3-031-57262-3_4)

**Abstract source:** CrossRef (10.1007/978-3-031-57262-3_4)

**Abstract:**

AbstractGraded type systems are a class of type system for fine-grained quantitative reasoning about data-flow in programs. Through the use of resource annotations (or grades), a programmer can express various program properties at the type level, reducing the number of typeable programs. These additional constraints on types lend themselves naturally to type-directed program synthesis, where this information can be exploited to constrain the search space of programs. We present a synthesis algorithm for a graded type system, where grades form an arbitrary pre-ordered semiring. Harnessing this grade information in synthesis is non-trivial, and we explore some of the issues involved in designing and implementing a resource-aware program synthesis tool. In our evaluation we show that by harnessing grades in synthesis, the majority of our benchmark programs (many of which involve recursive functions over recursive ADTs) require less exploration of the synthesis search space than a purely type-driven approach and with fewer needed input-output examples. This type-and-graded-directed approach is demonstrated for the research language Granule but we also adapt it for synthesising Haskell programs that use GHC’s linear types extension.

---

## 19. Qualifying System F<sub>&lt;:</sub>: Some Terms and Conditions May Apply

**Authors:** Lee, Zhao, Lhoták, You, Satheeskumar & Brachthäuser (2024)

**Venue / Year:** Proc. ACM Program. Lang. 8(OOPSLA1) (2024)

**DOI:** [https://doi.org/10.1145/3649832](https://doi.org/10.1145/3649832)

**Abstract source:** CrossRef (10.1145/3649832)

**Abstract:**

Type qualifiers offer a lightweight mechanism for enriching existing type systems to enforce additional, desirable, program invariants. They do so by offering a restricted but effective form of subtyping. While the theory of type qualifiers is well understood and present in many programming languages today, polymorphism over type qualifiers remains an area less well examined. We explore how such a polymorphic system could arise by constructing a calculus, System F-sub-Q, which combines the higher-rank bounded polymorphism of System F-sub with the theory of type qualifiers. We explore how the ideas used to construct System F-sub-Q can be reused in situations where type qualifiers naturally arise---in reference immutability, function colouring, and capture checking. Finally, we re-examine other qualifier systems in the literature in light of the observations presented while developing System F-sub-Q.

---

## 20. A Graded Modal Dependent Type Theory with a Universe and Erasure, Formalized

**Authors:** Abel, Danielsson & Eriksson (2023)

**Venue / Year:** Proc. ACM Program. Lang. 7(ICFP) (2023)

**DOI:** [https://doi.org/10.1145/3607862](https://doi.org/10.1145/3607862)

**Abstract source:** CrossRef (10.1145/3607862)

**Abstract:**

We present a graded modal type theory, a dependent type theory with             grades             that can be used to enforce various properties of the   code.   The theory has Π-types, weak and strong Σ-types, natural numbers, an   empty type, and a universe, and we also extend the theory with a unit   type and graded Σ-types.   The theory is parameterized by a modality, a kind of partially ordered   semiring, whose elements (grades) are used to track the usage of   variables in terms and types.   Different modalities are possible.   We focus mainly on quantitative properties, in particular erasure:   with the erasure modality one can mark function arguments as erasable.                                   The theory is fully formalized in Agda.   The formalization, which uses a syntactic Kripke logical relation at   its core and is based on earlier work, establishes major   meta-theoretic properties such as subject reduction, consistency,   normalization, and decidability of definitional equality.   We also prove a substitution theorem for grade assignment, and   preservation of grades under reduction.   Furthermore we study an extraction function that translates terms to   an untyped λ-calculus and removes erasable content, in   particular function arguments with the “erasable” grade.   For a certain class of modalities we prove that extraction is sound,   in the sense that programs of natural number type have the same value   before and after extraction.   Soundness of extraction holds also for             open             programs, as   long as all variables in the context are erasable, the context is   consistent, and             erased matches             are not allowed for weak   Σ-types.

---

## 21. Algebraic Effects for Extensible Dynamic Semantics

**Authors:** Grove & Bernardy (2023)

**Venue / Year:** J. Log. Lang. Inf. 32(2) (2023)

**DOI:** [https://doi.org/10.1007/s10849-022-09378-7](https://doi.org/10.1007/s10849-022-09378-7)

**Abstract source:** CrossRef (10.1007/s10849-022-09378-7)

**Abstract:**

AbstractResearch in dynamic semantics has made strides by studying various aspects of discourse in terms of computational effect systems, for example, monads (Shan, 2002; Charlow, 2014), Barker and 2014), (Maršik, 2016). We provide a system, based on graded monads, that synthesizes insights from these programs by formalizing individual discourse phenomena in terms of separate effects, or grades. Included are effects for introducing and retrieving discourse referents, non-determinism for indefiniteness, and generalized quantifier meanings. We formalize the behavior of individual effects, as well as the interactions between effects, in terms of algebraic laws tailored to the relevant discourse phenomena. The system we propose is thus modular and suggests a novel approach to integrating formal accounts of distinct semantic phenomena. Finally, we give an interpretation of the system into pure $$ \lambda $$                   λ                 -calculus that respects the laws. Future work will aim to integrate more discourse phenomena using the same methodology, for example, presupposition and conventional implicature.

---

## 22. Capturing Types

**Authors:** Boruch-Gruszecki, Odersky, Lee, Lhoták & Brachthäuser (2023)

**Venue / Year:** ACM Trans. Program. Lang. Syst. 45(4) (2023)

**DOI:** [https://doi.org/10.1145/3618003](https://doi.org/10.1145/3618003)

**Abstract source:** CrossRef (10.1145/3618003)

**Abstract:**

Type systems usually characterize the shape of values but not their free variables. However, many desirable safety properties could be guaranteed if one knew the free variables captured by values. We describe                            CC               &lt; :◻                          , a calculus where such captured variables are succinctly represented in types, and show it can be used to safely implement effects and effect polymorphism via scoped capabilities. We discuss how the decision to track captured variables guides key aspects of the calculus, and show that                            CC               &lt; :◻                            admits simple and intuitive types for common data structures and their typical usage patterns. We demonstrate how these ideas can be used to guide the implementation of capture checking in a practical programming language.

---

## 23. Contextual Linear Types for Differential Privacy

**Authors:** Toro, Darais, Abuah, Near, Árquez, Olmedo & Tanter (2023)

**Venue / Year:** ACM Trans. Program. Lang. Syst. 45(2) (2023)

**DOI:** [https://doi.org/10.1145/3589207](https://doi.org/10.1145/3589207)

**Abstract source:** CrossRef (10.1145/3589207)

**Abstract:**

Language support for differentially private programming is both crucial and delicate. While elaborate program logics can be very expressive, type-system-based approaches using linear types tend to be more lightweight and amenable to automatic checking and inference, and in particular in the presence of higher-order programming. Since the seminal design of             Fuzz             , which is restricted to ϵ-differential privacy in its original design, significant progress has been made to support more advanced variants of differential privacy, like (ϵ,             δ             )-differential privacy. However, supporting these advanced privacy variants while also supporting higher-order programming in full has proven to be challenging. We present             Jazz             , a language and type system that uses linear types and latent contextual effects to support both advanced variants of differential privacy and higher-order programming. Latent contextual effects allow delaying the payment of effects for connectives such as products, sums, and functions, yielding advantages in terms of precision of the analysis and annotation burden upon elimination, as well as modularity. We formalize the core of             Jazz             , prove it sound for privacy via a logical relation for metric preservation, and illustrate its expressive power through a number of case studies drawn from the recent differential privacy literature.

---

## 24. Elements of Quantitative Rewriting

**Authors:** Gavazzo & Di Florio (2023)

**Venue / Year:** Proc. ACM Program. Lang. 7(POPL) (2023)

**DOI:** [https://doi.org/10.1145/3571256](https://doi.org/10.1145/3571256)

**Abstract source:** CrossRef (10.1145/3571256)

**Abstract:**

We introduce a general theory of quantitative and metric rewriting systems, namely systems with a rewriting   relation enriched over quantales modelling abstract quantities. We develop theories of abstract and term-based   systems, refining cornerstone results of rewriting theory (such as Newman’s Lemma, Church-Rosser Theorem,   and critical pair-like lemmas) to a metric and quantitative setting. To avoid distance trivialisation and lack of   confluence issues, we introduce non-expansive, linear term rewriting systems, and then generalise the latter   to the novel class of graded term rewriting systems. These systems make quantitative rewriting modal and   context-sensitive, this way endowing rewriting with coeffectful behaviours.

---

## 25. Monitoring for Resource-Awareness

**Authors:** Bianchini (2023)

**Venue / Year:** VERIFY 2023 (2023)

**DOI:** [https://doi.org/10.1145/3605159.3605856](https://doi.org/10.1145/3605159.3605856)

**Abstract source:** OpenAlex (10.1145/3605159.3605856)

**Abstract:**

We show that resource-aware semantics, an execution model recently developed in the research community working on substructural type systems, can be naturally seen as a kind of monitored reduction.

---

## 26. Resource-Aware Soundness for Big-Step Semantics

**Authors:** Bianchini, Dagnino, Giannini & Zucca (2023)

**Venue / Year:** Proc. ACM Program. Lang. 7(OOPSLA2) (2023)

**DOI:** [https://doi.org/10.1145/3622843](https://doi.org/10.1145/3622843)

**Abstract source:** CrossRef (10.1145/3622843)

**Abstract:**

We extend the semantics and type system of a lambda calculus equipped with common constructs to be             resource-aware             . That is, reduction is instrumented to keep track of the usage of resources, and the type system guarantees, besides standard soundness, that for well-typed programs there is a computation where no needed resource gets exhausted. The resource-aware extension is parametric on an arbitrary             grade algebra             , and does not require ad-hoc changes to the underlying language. To this end, the semantics needs to be formalized in big-step style; as a consequence, expressing and proving (resource-aware) soundness is challenging, and is achieved by applying recent techniques based on coinductive reasoning.

---

## 27. When Programs Have to Watch Paint Dry

**Authors:** Ahman (2023)

**Venue / Year:** FoSSaCS 2023 (LNCS) (2023)

**DOI:** [https://doi.org/10.1007/978-3-031-30829-1_1](https://doi.org/10.1007/978-3-031-30829-1_1)

**Abstract source:** CrossRef (10.1007/978-3-031-30829-1_1)

**Abstract:**

AbstractWe explore type systems and programming abstractions for the safe usage of resources. In particular, we investigate how to use types to modularly specify and check when programs are allowed to use their resources, e.g., when programming a robot arm on a production line, it is crucial that painted parts are given enough time to dry before assembly. We capture such temporal resources using a time-graded variant of Fitch-style modal type systems, develop a corresponding modally typed, effectful core calculus, and equip it with a graded-monadic denotational semantics illustrated by a concrete presheaf model. Our calculus also includes graded algebraic effects and effect handlers. They are given a novel temporally aware treatment in which operations’ specifications include their execution times and their continuations know that an operation’s worth of additional time has passed before they start executing, making it possible to safely access further temporal resources in them.

---

## 28. A relational theory of effects and coeffects

**Authors:** Dal Lago & Gavazzo (2022)

**Venue / Year:** Proc. ACM Program. Lang. 6(POPL) (2022)

**DOI:** [https://doi.org/10.1145/3498692](https://doi.org/10.1145/3498692)

**Abstract source:** CrossRef (10.1145/3498692)

**Abstract:**

Graded modal types systems and coeffects are becoming a standard formalism to deal with context-dependent, usage-sensitive computations, especially when combined with computational effects. From a semantic perspective, effectful and coeffectful languages have been studied mostly by means of denotational semantics and almost nothing has been done from the point of view of relational reasoning. This gap in the literature is quite surprising, since many cornerstone results — such asnon-interference,metric preservation, andproof irrelevance— on concrete coeffects are inherently relational. In this paper, we fill this gap by developing a general theory and calculus of program relations for higher-order languages with combined effects and coeffects. The relational calculus builds upon the novel notion of acorelator(orcomonadic lax extension) to handle coeffects relationally. Inside such a calculus, we define three notions of effectful and coeffectful program refinements:contextual approximation,logical preorder, andapplicative similarity. These are the first operationally-based notions of program refinement (and, consequently, equivalence) for languages with combined effects and coeffects appearing in the literature. We show that the axiomatics of a corelator (together with the one of a relator) is precisely what is needed to prove all the aforementioned program refinements to be precongruences, this way obtaining compositional relational techniques for reasoning about combined effects and coeffects.

---

## 29. Bounded Abstract Effects

**Authors:** Melicher, Xu, Zhao, Potanin & Aldrich (2022)

**Venue / Year:** ACM Trans. Program. Lang. Syst. 44(1) (2022)

**DOI:** [https://doi.org/10.1145/3492427](https://doi.org/10.1145/3492427)

**Abstract source:** CrossRef (10.1145/3492427)

**Abstract:**

Effect systems have been a subject of active research for nearly four decades, with the most notable practical example being checked exceptions in programming languages such as Java. While many exception systems support abstraction, aggregation, and hierarchy (e.g., via class declaration and subclassing mechanisms), it is rare to see such expressive power in more generic effect systems. We designed an effect system around the idea of protecting system resources and incorporated our effect system into the Wyvern programming language. Similar to type members, a Wyvern object can have effect members that can abstract lower-level effects, allow for aggregation, and have both lower and upper bounds, providing for a granular effect hierarchy. We argue that Wyvern’s effects capture the right balance of expressiveness and power from the programming language design perspective. We present a full formalization of our effect-system design, showing that it allows reasoning about authority and attenuation. Our approach is evaluated through a security-related case study.

---

## 30. Coeffects for sharing and mutation

**Authors:** Bianchini, Dagnino, Giannini, Zucca & Servetto (2022)

**Venue / Year:** Proc. ACM Program. Lang. 6(OOPSLA2) (2022)

**DOI:** [https://doi.org/10.1145/3563319](https://doi.org/10.1145/3563319)

**Abstract source:** CrossRef (10.1145/3563319)

**Abstract:**

In             type-and-coeffect systems             , contexts are enriched by             coeffects             modeling how they are actually used, typically through annotations on single variables. Coeffects are computed bottom-up, combining, for each term, the coeffects of its subterms, through a fixed set of algebraic operators. We show that this principled approach can be adopted to track             sharing             in the imperative paradigm, that is, links among variables possibly introduced by the execution. This provides a significant example of non-structural coeffects, which cannot be computed by-variable, since the way a given variable is used can affect the coeffects of other variables. To illustrate the effectiveness of the approach, we enhance the type system tracking sharing to model a sophisticated set of features related to uniqueness and immutability. Thanks to the coeffect-based approach, we can express such features in a simple way and prove related properties with standard techniques.

---

## 31. Effects, capabilities, and boxes: from scope-based reasoning to type-based reasoning and back

**Authors:** Brachthäuser, Schuster, Lee & Boruch-Gruszecki (2022)

**Venue / Year:** Proc. ACM Program. Lang. 6(OOPSLA1) (2022)

**DOI:** [https://doi.org/10.1145/3527320](https://doi.org/10.1145/3527320)

**Abstract source:** CrossRef (10.1145/3527320)

**Abstract:**

Reasoning about the use of external resources is an important aspect of many practical applications. Effect systems enable tracking such information in types, but at the cost of complicating signatures of common functions. Capabilities coupled with escape analysis offer safety and natural signatures, but are often overly coarse grained and restrictive. We present System C, which builds on and generalizes ideas from type-based escape analysis and demonstrates that capabilities and effects can be reconciled harmoniously. By assuming that all functions are second class, we can admit natural signatures for many common programs. By introducing a notion of boxed values, we can lift the restrictions of second-class values at the cost of needing to track degree-of-impurity information in types. The system we present is expressive enough to support effect handlers in full capacity. We practically evaluate System C in an implementation and prove its soundness.

---

## 32. Logical Foundations of Quantitative Equality

**Authors:** Dagnino & Pasquali (2022)

**Venue / Year:** LICS 2022 (2022)

**DOI:** [https://doi.org/10.1145/3531130.3533337](https://doi.org/10.1145/3531130.3533337)

**Abstract source:** OpenAlex (10.1145/3531130.3533337)

**Abstract:**

In quantitative reasoning one compares objects by distances, instead of equivalence relations, so that one can measure how much they are similar, rather than just saying whether they are equivalent or not. In this paper we aim at providing a logical ground to quantitative reasoning with distances in Linear Logic, using the categorical language of Lawvere’s doctrines. The key idea is to see distances as equality predicates in Linear Logic. We use graded modalities to write a resource sensitive substitution rule for equality, which allows us to give it a quantitative meaning by distances. We introduce a deductive calculus for (Graded) Linear Logic with quantitative equality and the notion of Lipschitz doctrine to give it a sound and complete categorical semantics. We also describe a universal construction of Lipschitz doctrines, which generates examples based for instance on metric spaces and quantitative realisability.

---

## 33. Monadic and comonadic aspects of dependency analysis

**Authors:** Choudhury (2022)

**Venue / Year:** Proc. ACM Program. Lang. 6(OOPSLA2) (2022)

**DOI:** [https://doi.org/10.1145/3563335](https://doi.org/10.1145/3563335)

**Abstract source:** CrossRef (10.1145/3563335)

**Abstract:**

Dependency analysis is vital to several applications in computer science. It lies at the essence of secure information flow analysis, binding-time analysis, etc. Various calculi have been proposed in the literature for analysing individual dependencies. Abadi et. al., by extending Moggi’s monadic metalanguage, unified several of these calculi into the Dependency Core Calculus (DCC). DCC has served as a foundational framework for dependency analysis for the last two decades. However, in spite of its success, DCC has its limitations. First, the monadic bind rule of the calculus is nonstandard and relies upon an auxiliary protection judgement. Second, being of a monadic nature, the calculus cannot capture dependency analyses that possess a comonadic nature, for example, the binding-time calculus, λ             ∘             , of Davies. In this paper, we address these limitations by designing an alternative dependency calculus that is inspired by standard ideas from category theory. Our calculus is both monadic and comonadic in nature and subsumes both DCC and λ             ∘             . Our construction explains the nonstandard bind rule and the protection judgement of DCC in terms of standard categorical concepts. It also leads to a novel technique for proving correctness of dependency analysis. We use this technique to present alternative proofs of correctness for DCC and λ             ∘             .

---

## 34. Replicate, Reuse, Repeat: Capturing Non-Linear Communication via Session Types and Graded Modal Types

**Authors:** Marshall & Orchard (2022)

**Venue / Year:** EPTCS 356 (2022)

**DOI:** [https://doi.org/10.4204/EPTCS.356.1](https://doi.org/10.4204/EPTCS.356.1)

**arXiv:** [https://arxiv.org/abs/2203.12875](https://arxiv.org/abs/2203.12875)

**Abstract source:** OpenAlex (10.4204/EPTCS.356.1)

**Abstract:**

Session types provide guarantees about concurrent behaviour and can be understood through their correspondence with linear logic, with propositions as sessions and proofs as processes. However, a strictly linear setting is somewhat limiting, since there exist various useful patterns of communication that rely on non-linear behaviours. For example, shared channels provide a way to repeatedly spawn a process with binary communication along a fresh linear session-typed channel. Non-linearity can be introduced in a controlled way in programming through the general concept of graded modal types, which are a framework encompassing various kinds of coeffect typing (describing how computations make demands on their context). This paper shows how graded modal types can be leveraged alongside session types to enable various non-linear concurrency behaviours to be re-introduced in a precise manner in a type system with a linear basis. The ideas here are demonstrated using Granule, a functional programming language with linear, indexed, and graded modal types.

---

## 35. Weighted programming: a programming paradigm for specifying mathematical models

**Authors:** Batz, Gallus, Kaminski, Katoen & Winkler (2022)

**Venue / Year:** Proc. ACM Program. Lang. 6(OOPSLA1) (2022)

**DOI:** [https://doi.org/10.1145/3527310](https://doi.org/10.1145/3527310)

**Abstract source:** CrossRef (10.1145/3527310)

**Abstract:**

We study weighted programming, a programming paradigm for specifying mathematical models. More specifically, the weighted programs we investigate are like usual imperative programs with two additional features: (1) nondeterministic branching and (2) weighting execution traces. Weights can be numbers but also other objects like words from an alphabet, polynomials, formal power series, or cardinal numbers. We argue that weighted programming as a paradigm can be used to specify mathematical models beyond probability distributions (as is done in probabilistic programming). We develop weakest-precondition- and weakest-liberal-precondition-style calculi à la Dijkstra for reasoning about mathematical models specified by weighted programs. We present several case studies. For instance, we use weighted programming to model the ski rental problem — an optimization problem. We model not only the optimization problem itself, but also the best deterministic online algorithm for solving this problem as weighted programs. By means of weakest-precondition-style reasoning, we can determine the competitive ratio of the online algorithm on source code level.

---

## 36. A Dependent Dependency Calculus

**Authors:** Choudhury, Eades & Weirich (2021)

**Venue / Year:** APLAS 2020 (LNCS) (2021)

**DOI:** [https://doi.org/10.1007/978-3-030-99336-8_15](https://doi.org/10.1007/978-3-030-99336-8_15)

**Abstract source:** CrossRef (10.1007/978-3-030-99336-8_15)

**Abstract:**

AbstractOver twenty years ago, Abadi et al. established the Dependency Core Calculus (DCC) as a general purpose framework for analyzing dependency in typed programming languages. Since then, dependency analysis has shown many practical benefits to language design: its results can help users and compilers enforce security constraints, eliminate dead code, among other applications. In this work, we present a Dependent Dependency Calculus (DDC), which extends this general idea to the setting of a dependently-typed language. We use this calculus to track both run-time and compile-time irrelevance, enabling faster type-checking and program execution.

---

## 37. A Framework for Substructural Type Systems

**Authors:** Wood & Atkey (2021)

**Venue / Year:** APLAS 2020 (LNCS) (2021)

**DOI:** [https://doi.org/10.1007/978-3-030-99336-8_14](https://doi.org/10.1007/978-3-030-99336-8_14)

**Abstract source:** CrossRef (10.1007/978-3-030-99336-8_14)

**Abstract:**

AbstractMechanisation of programming language research is of growing interest, and the act of mechanising type systems and their metatheory is generally becoming easier as new techniques are invented. However, state-of-the-art techniques mostly rely on structurality of the type system — that weakening, contraction, and exchange are admissible and variables can be used unrestrictedly once assumed. Linear logic, and many related subsequent systems, provide motivations for breaking some of these assumptions.We present a framework for mechanising the metatheory of certain substructural type systems, in a style resembling mechanised metatheory of structural type systems. The framework covers a wide range of simply typed syntaxes with semiring usage annotations, via a metasyntax of typing rules. The metasyntax for the premises of a typing rule is related to bunched logic, featuring both sharing and separating conjunction, roughly corresponding to the additive and multiplicative features of linear logic. We use the uniformity of syntaxes to derive type system-generic renaming, substitution, and a form of linearity checking.

---

## 38. A Linear Algebra Approach to Linear Metatheory

**Authors:** Wood & Atkey (2021)

**Venue / Year:** EPTCS 353 (2021)

**DOI:** [https://doi.org/10.4204/EPTCS.353.10](https://doi.org/10.4204/EPTCS.353.10)

**arXiv:** [https://arxiv.org/abs/2005.02247](https://arxiv.org/abs/2005.02247)

**Abstract source:** OpenAlex (10.4204/EPTCS.353.10)

**Abstract:**

Linear typed $\lambda$-calculi are more delicate than their simply typed siblings when it comes to metatheoretic results like preservation of typing under renaming and substitution. Tracking the usage of variables in contexts places more constraints on how variables may be renamed or substituted. We present a methodology based on linear algebra over semirings, extending McBride's kits and traversals approach for the metatheory of syntax with binding to linear usage-annotated terms. Our approach is readily formalisable, and we have done so in Agda.

---

## 39. A type- and scope-safe universe of syntaxes with binding: their semantics and proofs

**Authors:** Allais, Atkey, Chapman, McBride & McKinna (2021)

**Venue / Year:** J. Funct. Program. 31 (2021)

**DOI:** [https://doi.org/10.1017/S0956796820000076](https://doi.org/10.1017/S0956796820000076)

**Abstract source:** CrossRef (10.1017/S0956796820000076)

**Abstract:**

Abstract                                        The syntax of almost every programming language includes a notion of binder and corresponding bound occurrences, along with the accompanying notions of α-equivalence, capture-avoiding substitution, typing contexts, runtime environments, and so on. In the past, implementing and reasoning about programming languages required careful handling to maintain the correct behaviour of bound variables. Modern programming languages include features that enable constraints like scope safety to be expressed in types. Nevertheless, the programmer is still forced to write the same boilerplate over again for each new implementation of a scope-safe operation (e.g., renaming, substitution, desugaring, printing), and then again for correctness proofs. We present an expressive universe of syntaxes with binding and demonstrate how to (1) implement scope-safe traversals once and for all by generic programming; and (2) how to derive properties of these traversals by generic proving. Our universe description, generic traversals and proofs, and our examples have all been formalised in Agda and are available in the accompanying material available online at                     https://github.com/gallais/generic-syntax                     .

---

## 40. A unifying type-theory for higher-order (amortized) cost analysis

**Authors:** Rajani, Gaboardi, Garg & Hoffmann (2021)

**Venue / Year:** Proc. ACM Program. Lang. 5(POPL) (2021)

**DOI:** [https://doi.org/10.1145/3434308](https://doi.org/10.1145/3434308)

**Abstract source:** CrossRef (10.1145/3434308)

**Abstract:**

This paper presents λ-amor, a new type-theoretic framework for amortized cost analysis of higher-order functional programs and shows that existing type systems for cost analysis can be embedded in it. λ-amor introduces a new modal type for representing potentials – costs that have been accounted for, but not yet incurred, which are central to amortized analysis. Additionally, λ-amor relies on standard type-theoretic concepts like affineness, refinement types and an indexed cost monad. λ-amor is proved sound using a rather simple logical relation. We embed two existing type systems for cost analysis in λ-amor showing that, despite its simplicity, λ-amor can simulate cost analysis for different evaluation strategies (call-by-name and call-by-value), in different styles (effect-based and coeffect-based), and with or without amortization. One of the embeddings also implies that λ-amor is relatively complete for all terminating PCF programs.

---

## 41. Deriving Distributive Laws for Graded Linear Types

**Authors:** Hughes, Vollmer & Orchard (2021)

**Venue / Year:** EPTCS 353 (2021)

**DOI:** [https://doi.org/10.4204/EPTCS.353.6](https://doi.org/10.4204/EPTCS.353.6)

**arXiv:** [https://arxiv.org/abs/2112.14966](https://arxiv.org/abs/2112.14966)

**Abstract source:** OpenAlex (10.4204/EPTCS.353.6)

**Abstract:**

The recent notion of graded modal types provides a framework for extending type theories with fine-grained data-flow reasoning. The Granule language explores this idea in the context of linear types. In this practical setting, we observe that the presence of graded modal types can introduce an additional impediment when programming: when composing programs, it is often necessary to 'distribute' data types over graded modalities, and vice versa. In this paper, we show how to automatically derive these distributive laws as combinators for programming. We discuss the implementation and use of this automated deriving procedure in Granule, providing easy access to these distributive combinators. This work is also applicable to Linear Haskell (which retrofits Haskell with linear types via grading) and we apply our technique there to provide the same automatically derived combinators. Along the way, we discuss interesting considerations for pattern matching analysis via graded linear types. Lastly, we show how other useful structural combinators can also be automatically derived.

---

## 42. Kotlin coroutines: design and implementation

**Authors:** Elizarov, Belyaev, Akhin & Usmanov (2021)

**Venue / Year:** Onward! 2021 (2021)

**DOI:** [https://doi.org/10.1145/3486607.3486751](https://doi.org/10.1145/3486607.3486751)

**Abstract source:** OpenAlex (10.1145/3486607.3486751)

**Abstract:**

Asynchronous programming is having its “renaissance” moment in recent years. Created in the 1980s, it was in use for quite some time, but with the advent of multi-core processors, it has been sidestepped by multi-threaded programming, which was (for a long time) the de facto standard of performing concurrent computations. However, since the 2000s, more and more programming languages have begun to include the support for asynchronous programming, some built around asynchronicity from the start, others including it later in their evolution.

---

## 43. Safe mutation with algebraic effects

**Authors:** Punchihewa & Wu (2021)

**Venue / Year:** Haskell 2021 (2021)

**DOI:** [https://doi.org/10.1145/3471874.3472988](https://doi.org/10.1145/3471874.3472988)

**Abstract source:** OpenAlex (10.1145/3471874.3472988)

**Abstract:**

It can be difficult to write safe concurrent programs which use shared mutable state. Subtle mistakes can lead to data races that manifest as unexpected program behaviour. The prevailing approaches to solving this dilemma are to either eschew mutable state altogether, or design bespoke languages that prevent data races by design. This article introduces a third approach by showing how safe mutation can be integrated into a mainstream functional programming language with algebraic effects. This article produces a framework that tracks the use of mutable state and guarantees data race freedom at compile time.

---

## 44. A unified view of modalities in type systems

**Authors:** Abel & Bernardy (2020)

**Venue / Year:** Proc. ACM Program. Lang. 4(ICFP) (2020)

**DOI:** [https://doi.org/10.1145/3408972](https://doi.org/10.1145/3408972)

**Abstract source:** CrossRef (10.1145/3408972)

**Abstract:**

We propose to unify the treatment of a broad range of modalities in typed lambda calculi. We do so by defining a generic structure of modalities, and show that this structure arises naturally from the structure of intuitionistic logic, and as such finds instances in a wide range of type systems previously described in literature. Despite this generality, this structure has a rich metatheory, which we expose.

---

## 45. Algebraic and Coalgebraic Perspectives on Interaction Laws

**Authors:** Uustalu & Voorneveld (2020)

**Venue / Year:** APLAS 2020 (LNCS) (2020)

**DOI:** [https://doi.org/10.1007/978-3-030-64437-6_10](https://doi.org/10.1007/978-3-030-64437-6_10)

**Abstract source:** manual

**Abstract:**

Monad algebras, turning computations over return values into values, are used to handle algebraic effects invoked by programs, whereas comonad coalgebras, turning initial states into environments ("cocomputations") over states, describe production of coalgebraic coeffects that can respond to effects. (Monad-comonad) interaction laws by Katsumata et al. describe interaction protocols between a computation and an environment. We show that any triple of those devices can be combined into a single algebra handling computations over state predicates. This method yields an isomorphism between the category of interaction laws, and the category of so-called merge functors which merge algebras and coalgebras to form combined algebras. In a similar vein, we can combine interaction laws with coalgebras only, retrieving Uustalu's stateful runners. If instead we combine interaction laws with algebras only, we get a novel concept of continuation-based runners that lift an environment of value predicates to a single predicate on computations of values. We use these notions to study different running examples of interactions of computations and environments.

---

## 46. Assumption-Commitment Types for Resource Management in Virtually Timed Ambients

**Authors:** Johnsen, Steffen & Stumpf (2020)

**Venue / Year:** ISoLA 2020 (LNCS) (2020)

**DOI:** [https://doi.org/10.1007/978-3-030-61362-4_6](https://doi.org/10.1007/978-3-030-61362-4_6)

**Abstract source:** Semantic Scholar (10.1007/978-3-030-61362-4_6)

**Abstract:**

This paper introduces a type system for resource management in the context of nested virtualization. With nested virtualization, virtual machines compete with other processes for the resources of their host environment in order to provision their own processes, which could again be virtual machines. The calculus of virtually timed ambients formalizes such resource provisioning, extending the capabilities of mobile ambients to model the dynamic creation, migration, and destruction of virtual machines. The proposed type system uses assumptions about the outside of a virtually timed ambient to guarantee resource provisioning on the inside. We prove subject reduction and progress for well-typed virtually timed ambients, expressing that upper bounds on resource needs are preserved by reduction and that processes do not run out of resources.

---

## 47. Effects as capabilities: effect handlers and lightweight effect polymorphism

**Authors:** Brachthäuser, Schuster & Ostermann (2020)

**Venue / Year:** Proc. ACM Program. Lang. 4(OOPSLA) (2020)

**DOI:** [https://doi.org/10.1145/3428194](https://doi.org/10.1145/3428194)

**Abstract source:** CrossRef (10.1145/3428194)

**Abstract:**

Effect handlers have recently gained popularity amongst programming language researchers. Existing type- and effect systems for effect handlers are often complicated and potentially hinder a wide-spread adoption.                        We present the language Effekt with the goal to close the gap between research languages with effect handlers and languages for working programmers. The design of Effekt revolves around a different view of effects and effect types. Traditionally, effect types express which             side effects             a computation might have. In Effekt, effect types express which             capabilities             a computation requires from its context. While this new point in the design space of effect systems impedes reasoning about purity, we demonstrate that it simplifies the treatment of effect polymorphism and the related issues of effect parametricity and effect encapsulation. To guarantee effect safety, we separate functions from values and treat             all             functions as second-class. We define the semantics of Effekt as a translation to System Xi, a calculus in explicit capability-passing style.

---

## 48. Graded Hoare Logic and its Categorical Semantics

**Authors:** Gaboardi, Katsumata, Orchard & Sato (2020)

**Venue / Year:** APLAS 2020 (LNCS) (2020)

**DOI:** [https://doi.org/10.1007/978-3-030-72019-3_9](https://doi.org/10.1007/978-3-030-72019-3_9)

**Abstract source:** CrossRef (10.1007/978-3-030-72019-3_9)

**Abstract:**

AbstractDeductive verification techniques based on program logics (i.e., the family of Floyd-Hoare logics) are a powerful approach for program reasoning. Recently, there has been a trend of increasing the expressive power of such logics by augmenting their rules with additional information to reason about program side-effects. For example, general program logics have been augmented with cost analyses, logics for probabilistic computations have been augmented with estimate measures, and logics for differential privacy with indistinguishability bounds. In this work, we unify these various approaches via the paradigm of grading, adapted from the world of functional calculi and semantics. We propose Graded Hoare Logic (GHL), a parameterisable framework for augmenting program logics with a preordered monoidal analysis. We develop a semantic framework for modelling GHL such that grading, logical assertions (pre- and post-conditions) and the underlying effectful semantics of an imperative language can be integrated together. Central to our framework is the notion of a graded category which we extend here, introducing graded Freyd categories which provide a semantics that can interpret many examples of augmented program logics from the literature. We leverage coherent fibrations to model the base assertion language, and thus the overall setting is also fibrational.

---

## 49. Graded Modal Dependent Type Theory

**Authors:** Moon, Eades & Orchard (2020)

**Venue / Year:** APLAS 2020 (LNCS) (2020)

**DOI:** [https://doi.org/10.1007/978-3-030-72019-3_17](https://doi.org/10.1007/978-3-030-72019-3_17)

**Abstract source:** CrossRef (10.1007/978-3-030-72019-3_17)

**Abstract:**

AbstractGraded type theories are an emerging paradigm for augmenting the reasoning power of types with parameterizable, fine-grained analyses of program properties. There have been many such theories in recent years which equip a type theory with quantitative dataflow tracking, usually via a semiring-like structure which provides analysis on variables (often called ‘quantitative’ or ‘coeffect’ theories). We present Graded Modal Dependent Type Theory (Grttfor short), which equips a dependent type theory with a general, parameterizable analysis of the flow of data, both in and between computational terms and types. In this theory, it is possible to study, restrict, and reason about data use in programs and types, enabling, for example, parametric quantifiers and linearity to be captured in a dependent setting. We proposeGrtt, study its metatheory, and explore various case studies of its use in reasoning about programs and studying other type theories. We have implemented the theory and highlight the interesting details, including showing an application of grading to optimising the type checking procedure itself.

---

## 50. Recovering purity with comonads and capabilities

**Authors:** Choudhury & Krishnaswami (2020)

**Venue / Year:** Proc. ACM Program. Lang. 4(ICFP) (2020)

**DOI:** [https://doi.org/10.1145/3408993](https://doi.org/10.1145/3408993)

**Abstract source:** CrossRef (10.1145/3408993)

**Abstract:**

In this paper, we take a pervasively effectful (in the style of ML) typed lambda calculus, and show how to             extend             it to permit capturing pure expressions with types. Our key observation is that, just as the pure simply-typed lambda calculus can be extended to support effects with a monadic type discipline, an impure typed lambda calculus can be extended to support purity with a             comonadic             type discipline.                                   We establish the correctness of our type system via a simple denotational model, which we call the             capability space             model. Our model formalises the intuition common to systems programmers that the ability to perform effects should be controlled via access to a permission or capability, and that a program is             capability-safe             if it performs no effects that it does not have a runtime capability for. We then identify the axiomatic categorical structure that the capability space model validates, and use these axioms to give a categorical semantics for our comonadic type system. We then give an equational theory (substitution and the call-by-value β and η laws) for the imperative lambda calculus, and show its soundness relative to this semantics.                      Finally, we give a translation of the pure simply-typed lambda calculus into our comonadic imperative calculus, and show that any two terms which are βη-equal in the STLC are equal in the equational theory of the comonadic calculus, establishing that pure programs can be mapped in an equation-preserving way into our imperative calculus.

---

## 51. Modalities, cohesion, and information flow

**Authors:** Kavvos (2019)

**Venue / Year:** Proc. ACM Program. Lang. 3(POPL) (2019)

**DOI:** [https://doi.org/10.1145/3290333](https://doi.org/10.1145/3290333)

**Abstract source:** CrossRef (10.1145/3290333)

**Abstract:**

It is informally understood that the purpose of modal type constructors in programming calculi is to control the flow of information between types. In order to lend rigorous support to this idea, we study the category of classified sets, a variant of a denotational semantics for information flow proposed by Abadi et al. We use classified sets to prove multiple noninterference theorems for modalities of a monadic and comonadic flavour. The common machinery behind our theorems stems from the the fact that classified sets are a (weak) model of Lawvere's theory of axiomatic cohesion. In the process, we show how cohesion can be used for reasoning about multi-modal settings. This leads to the conclusion that cohesion is a particularly useful setting for the study of both information flow, but also modalities in type theory and programming languages at large.

---

## 52. Quantitative program reasoning with graded modal types

**Authors:** Orchard, Liepelt & Eades (2019)

**Venue / Year:** Proc. ACM Program. Lang. 3(ICFP) (2019)

**DOI:** [https://doi.org/10.1145/3341714](https://doi.org/10.1145/3341714)

**Abstract source:** CrossRef (10.1145/3341714)

**Abstract:**

In programming, some data acts as a resource (e.g., file handles, channels) subject to usage constraints. This poses a challenge to software correctness as most languages are agnostic to constraints on data. The approach of linear types provides a partial remedy, delineating data into resources to be used but never copied or discarded, and unconstrained values. Bounded Linear Logic provides a more fine-grained approach, quantifying non-linear use via an indexed-family of modalities. Recent work on coeffect types generalises this idea to graded comonads, providing type systems which can capture various program properties. Here, we propose the umbrella notion of graded modal types, encompassing coeffect types and dual notions of type-based effect reasoning via graded monads. In combination with linear and indexed types, we show that graded modal types provide an expressive type theory for quantitative program reasoning, advancing the reach of type systems to capture and verify a broader set of program properties. We demonstrate this approach via a type system embodied in a fully-fledged functional language called Granule, exploring various examples.

---

## 53. A Context-Oriented Programming Approach to Dependency Hell

**Authors:** Tanabe, Aotani & Masuhara (2018)

**Venue / Year:** COP 2018 (2018)

**DOI:** [https://doi.org/10.1145/3242921.3242923](https://doi.org/10.1145/3242921.3242923)

**Abstract source:** OpenAlex (10.1145/3242921.3242923)

**Abstract:**

Two or more incompatible versions of a library are sometimes needed in one software artifact, which is so-called dependency hell. One likely faces the problem if he or she uses two or more libraries that depend on the same library. In this paper, we propose versioned values to solve the problem. They allow us to have multiple versions of functions in a binary file. This gets rid of requiring two or more incompatible binaries. We develop a calculus λVL to discuss type safety in the case where definitions are available only in specific versions, which is a common and important nature of versioned programs.

---

## 54. Context-Updates Analysis and Refinement in Chisel

**Authors:** Asăvoae, Asăvoae & Riesco (2018)

**Venue / Year:** SPIN 2018 (LNCS) (2018)

**DOI:** [https://doi.org/10.1007/978-3-319-94111-0_19](https://doi.org/10.1007/978-3-319-94111-0_19)

**Abstract source:** Semantic Scholar (10.1007/978-3-319-94111-0_19)

**Abstract:**

This paper presents the context-updates synthesis component of Chisel--a tool that synthesizes a program slicer directly from a given algebraic specification of a programming language operational semantics. (By context-updates we understand programming language constructs such as goto instructions or function calls.) The context-updates synthesis follows two directions: an overapproximating phase that extracts a set of potential context-update constructs and an underapproximating phase that refines the results of the first step by testing the behaviour of the context-updates constructs produced at the previous phase. We use two experimental semantics that cover two types of language paradigms: high-level imperative and low-level assembly languages and we conduct the tests on standard benchmarks used in avionics.

---

## 55. Strict and lazy semantics for effects: layering monads and comonads

**Authors:** Hirsch & Tate (2018)

**Venue / Year:** Proc. ACM Program. Lang. 2(ICFP) (2018)

**DOI:** [https://doi.org/10.1145/3236783](https://doi.org/10.1145/3236783)

**Abstract source:** CrossRef (10.1145/3236783)

**Abstract:**

Two particularly important classes of effects are those that can be given semantics using a monad and those that can be given semantics using a comonad. Currently, programs with both kinds of effects are usually given semantics using a technique that relies on a distributive law. While it is known that not every pair of a monad and a comonad has a distributive law, it was previously unknown if there were any realistic pairs of effects that could not be given semantics in this manner. This paper answers that question by giving an example of a pair of effects that cannot be given semantics using a distributive law. Our example furthermore is intimately tied to the duality of strictness and laziness. We discuss how to view this duality through the lens of effects.

---

## 56. Syntax and Semantics of Quantitative Type Theory

**Authors:** Atkey (2018)

**Venue / Year:** LICS 2018 (2018)

**DOI:** [https://doi.org/10.1145/3209108.3209189](https://doi.org/10.1145/3209108.3209189)

**Abstract source:** OpenAlex (10.1145/3209108.3209189)

**Abstract:**

We present Quantitative Type Theory, a Type Theory that records usage information for each variable in a judgement, based on a previous system by McBride. The usage information is used to give a realizability semantics using a variant of Linear Combinatory Algebras, refining the usual realizability semantics of Type Theory by accurately tracking resource behaviour. We define the semantics in terms of Quantitative Categories with Families, a novel extension of Categories with Families for modelling resource sensitive type theories.

---

## 57. Versatile event correlation with algebraic effects

**Authors:** Bračevac, Amin, Salvaneschi, Erdweg, Eugster & Mezini (2018)

**Venue / Year:** Proc. ACM Program. Lang. 2(ICFP) (2018)

**DOI:** [https://doi.org/10.1145/3236762](https://doi.org/10.1145/3236762)

**Abstract source:** CrossRef (10.1145/3236762)

**Abstract:**

We present the first language design to uniformly express variants of             n             -way joins over asynchronous event streams from different domains, e.g., stream-relational algebra, event processing, reactive and concurrent programming. We model asynchronous reactive programs and joins in direct style, on top of algebraic effects and handlers. Effect handlers act as modular interpreters of event notifications, enabling fine-grained control abstractions and customizable event matching. Join variants can be considered as cartesian product computations with ”degenerate” control flow, such that unnecessary tuples are not materialized a priori. Based on this computational interpretation, we decompose joins into a generic, naive enumeration procedure of the cartesian product, plus variant-specific extensions, represented in terms of user-supplied effect handlers. Our microbenchmarks validate that this extensible design avoids needless materialization. Alongside a formal semantics for joining and prototypes in Koka and multicore OCaml, we contribute a systematic comparison of the covered domains and features.

---

## 58. Combining effects and coeffects via grading

**Authors:** Gaboardi, Katsumata, Orchard, Breuvart & Uustalu (2016)

**Venue / Year:** ICFP 2016 (2016)

**DOI:** [https://doi.org/10.1145/2951913.2951939](https://doi.org/10.1145/2951913.2951939)

**Abstract source:** OpenAlex (10.1145/2951913.2951939)

**Abstract:**

Effects and coeffects are two general, complementary aspects of program behaviour. They roughly correspond to computations which change the execution context (effects) versus computations which make demands on the context (coeffects). Effectful features include partiality, non-determinism, input-output, state, and exceptions. Coeffectful features include resource demands, variable access, notions of linearity, and data input requirements. The effectful or coeffectful behaviour of a program can be captured and described via type-based analyses, with fine grained information provided by monoidal effect annotations and semiring coeffects. Various recent work has proposed models for such typed calculi in terms of graded (strong) monads for effects and graded (monoidal) comonads for coeffects. Effects and coeffects have been studied separately so far, but in practice many computations are both effectful and coeffectful, e.g., possibly throwing exceptions but with resource requirements. To remedy this, we introduce a new general calculus with a combined effect-coeffect system. This can describe both the changes and requirements that a program has on its context, as well as interactions between these effectful and coeffectful features of computation. The effect-coeffect system has a denotational model in terms of effect-graded monads and coeffect-graded comonads where interaction is expressed via the novel concept of graded distributive laws. This graded semantics unifies the syntactic type theory with the denotational model. We show that our calculus can be instantiated to describe in a natural way various different kinds of interaction between a program and its evaluation context.

---

## 59. Effect Systems Revisited—Control-Flow Algebra and Semantics

**Authors:** Mycroft, Orchard & Petricek (2016)

**Venue / Year:** LNCS (Nielson/Nielson Festschrift) (2016)

**DOI:** [https://doi.org/10.1007/978-3-319-27810-0_1](https://doi.org/10.1007/978-3-319-27810-0_1)

**Abstract source:** manual

**Abstract:**

Effect systems were originally conceived as an inference-based program analysis to capture program behaviour—as a set of (representations of) effects. Two orthogonal developments have since happened. First, motivated by static analysis, effects were generalised to values in an algebra, to better model control flow (e.g. for may/must analyses and concurrency). Second, motivated by semantic questions, the syntactic notion of set- (or semilattice-) based effect system was linked to the semantic notion of monads and more recently to graded monads which give a more precise semantic account of effects. We give a lightweight tutorial explanation of the concepts involved in these two threads and then unify them via the notion of an effect-directed semantics for a control-flow algebra of effects. For the case of effectful programming with sequencing, alternation and parallelism—illustrated with music—we identify a form of graded joinads as the appropriate structure for unifying effect analysis and semantics.

---

## 60. Gentrification gone too far? affordable 2nd-class values for fun and (co-)effect

**Authors:** Osvald, Essertel, Wu, Alayón & Rompf (2016)

**Venue / Year:** OOPSLA 2016 (2016)

**DOI:** [https://doi.org/10.1145/3022671.2984009](https://doi.org/10.1145/3022671.2984009)

**Abstract source:** CrossRef (10.1145/3022671.2984009)

**Abstract:**

First-class functions dramatically increase expressiveness, at the expense of static guarantees. In ALGOL or PASCAL, functions could be passed as arguments but never escape their defining scope. Therefore, function arguments could serve as temporary access tokens or capabilities, enabling callees to perform some action, but only for the duration of the call. In modern languages, such programming patterns are no longer available. The central thrust of this paper is to re-introduce second-class functions and other values alongside first-class entities in modern languages. We formalize second-class values with stack-bounded lifetimes as an extension to simply-typed λ calculus, and for richer type systems such as F<: and systems with path-dependent types. We generalize the binary first- vs second-class distinction to arbitrary privilege lattices, with the underlying type lattice as a special case. In this setting, abstract types naturally enable privilege parametricity. We prove type soundness and lifetime properties in Coq. We implement our system as an extension of Scala, and present several case studies. First, we modify the Scala Collections library and add privilege annotations to all higher-order functions. Privilege parametricity is key to retain the high degree of code-reuse between sequential and parallel as well as lazy and eager collections. Second, we use scoped capabilities to introduce a model of checked exceptions in the Scala library, with only few changes to the code. Third, we employ second-class capabilities for memory safety in a region-based off-heap memory library.

---

## 61. I Got Plenty o' Nuttin'

**Authors:** McBride (2016)

**Venue / Year:** LNCS (McCarthy Festschrift) (2016)

**DOI:** [https://doi.org/10.1007/978-3-319-30936-1_12](https://doi.org/10.1007/978-3-319-30936-1_12)

**Abstract source:** manual

**Abstract:**

Work to date on combining linear types and dependent types has deliberately and successfully avoided doing so. Entirely fit for their own purposes, such systems wisely insist that types depend only on the replicable sublanguage, thus sidestepping the issue of counting uses of limited-use data either within types or in ways which are only really needed to shut the typechecker up. As a result, the linear implication ('lollipop') stubbornly remains a non-dependent S ⊸ T. This paper defines and establishes the basic metatheory of a type theory supporting a 'dependent lollipop' (x:S) ⊸ T[x], where what the input used to be is in some way commemorated by the type of the output. For example, we might convert list to length-indexed vectors in place by a function with type (l: List X) ⊸ Vector X (length l). Usage is tracked with resource annotations belonging to an arbitrary rig, or 'riNg without Negation'. The key insight is to use the rig's zero to mark information in contexts which is present for purposes of contemplation rather than consumption, like a meal we remember fondly but cannot eat twice. We need no runtime copies of l to form the above vector type. We can have plenty of nothing with no additional runtime resource, and nothing is plenty for the construction of dependent types.

---

## 62. Relative Hilbert-Post Completeness for Exceptions

**Authors:** Dumas, Duval, Ekici, Pous & Reynaud (2016)

**Venue / Year:** MACIS 2015 (LNCS) (2016)

**DOI:** [https://doi.org/10.1007/978-3-319-32859-1_51](https://doi.org/10.1007/978-3-319-32859-1_51)

**Abstract source:** manual

**Abstract:**

A theory is complete if it does not contain a contradiction, while all of its proper extensions do. In this paper, first we introduce a relative notion of syntactic completeness; then we prove that adding exceptions to a programming language can be done in such a way that the completeness of the language is not made worse. These proofs are formalized in a logical system which is close to the usual syntax for exceptions, and they have been checked with the proof assistant Coq.

---

## 63. The best of both worlds: linear functional programming without compromise

**Authors:** Morris (2016)

**Venue / Year:** ICFP 2016 (2016)

**DOI:** [https://doi.org/10.1145/2951913.2951925](https://doi.org/10.1145/2951913.2951925)

**Abstract source:** OpenAlex (10.1145/2951913.2951925)

**Abstract:**

We present a linear functional calculus with both the safety guarantees expressible with linear types and the rich language of combinators and composition provided by functional programming. Unlike previous combinations of linear typing and functional programming, we compromise neither the linear side (for example, our linear values are first-class citizens of the language) nor the functional side (for example, we do not require duplicate definitions of compositions for linear and unrestricted functions). To do so, we must generalize abstraction and application to encompass both linear and unrestricted functions. We capture the typing of the generalized constructs with a novel use of qualified types. Our system maintains the metatheoretic properties of the theory of qualified types, including principal types and decidable type inference. Finally, we give a formal basis for our claims of expressiveness, by showing that evaluation respects linearity, and that our language is a conservative extension of existing functional calculi.

---

## 64. Using session types as an effect system

**Authors:** Orchard & Yoshida (2016)

**Venue / Year:** EPTCS 203 (2016)

**DOI:** [https://doi.org/10.4204/EPTCS.203.1](https://doi.org/10.4204/EPTCS.203.1)

**arXiv:** [https://arxiv.org/abs/1602.03591](https://arxiv.org/abs/1602.03591)

**Abstract source:** OpenAlex (10.4204/EPTCS.203.1)

**Abstract:**

Side effects are a core part of practical programming. However, they are often hard to reason about, particularly in a concurrent setting. We propose a foundation for reasoning about concurrent side effects using sessions. Primarily, we show that session types are expressive enough to encode an effect system for stateful processes. This is formalised via an effect-preserving encoding of a simple imperative language with an effect system into the pi-calculus with session primitives and session types (into which we encode effect specifications). This result goes towards showing a connection between the expressivity of session types and effect systems. We briefly discuss how the encoding could be extended and applied to reason about and control concurrent side effects.

---

