---
title: "Floating-point formal verification"
description: "RTL-to-RTL model checking for floating-point arithmetic using staged helper assertions and refinement."
keywords: ["formal verification", "floating point", "RTL-to-RTL", "SVA", "model checking", "proof decomposition"]
---

{{< abstract title="Abstract" kicker="Case study (formal verification)" >}}
A scalable floating-point verification workflow using RTL-to-RTL model checking against a golden reference, structured into staged helper assertions to make proofs converge.
{{< /abstract >}}

{{< metric_strip >}}
- **Focus:** proof structure · helper lemmas · counterexample-guided refinement  
- **Domains:** floating-point · arithmetic · correctness-critical blocks  
- **Stack:** SystemVerilog · SVA · formal tooling · Python automation  
{{< /metric_strip >}}

## Problem
Floating-point units are correctness-critical and difficult to cover comprehensively with simulation alone. Formal proofs often fail without a disciplined decomposition strategy.

## Approach
- Direct RTL-to-RTL checking to reduce abstraction/translation gaps
- Divide-and-conquer proof plan (staged helper assertions / lemmas)
- Iteration driven by counterexamples and coverage

## Evidence and links
{{< artifact_card
  title="Preprint"
  subtitle="Formal that “Floats” High: Formal Verification of Floating Point Arithmetic"
  meta="Preprint · canonical details in Publications"
  link="/publications/"
  cta="View publication entry →"
  tags="Formal,SVA,Floating point,Proof structure"
>}}
Publication details and canonical venue links are maintained on the Publications page.
{{< /artifact_card >}}

{{< cta title="Building proof structures for arithmetic blocks?" subtitle="Send the block type, what’s failing (CEX/vacuity), and what tooling you use. I’ll respond with a structured approach." primaryText="Contact" primaryLink="/contact/" secondaryText="Publications" secondaryLink="/publications/" >}}
