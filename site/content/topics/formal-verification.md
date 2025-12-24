---
title: "Formal verification"
description: "My approach to formal verification: proof decomposition, counterexample-guided refinement, and evidence-first workflows."
keywords: ["formal verification", "model checking", "property checking", "proof decomposition", "counterexample", "coverage"]
---

{{< abstract title="Summary" kicker="Topic (verification)" >}}
Formal verification is how I turn design intent into **provable evidence**. My approach is pragmatic: focus on proof structure, build helper assertions, and iterate using counterexamples and coverage signals.
{{< /abstract >}}

{{< metric_strip >}}
- **Focus:** proof structure · convergence · evidence trail  
- **Methods:** helper lemmas · CEX-guided refinement · coverage-aware iteration  
{{< /metric_strip >}}

## What I optimize for
- **Fast convergence:** break big goals into smaller provable claims
- **Explainable failures:** counterexamples should point to actionable causes
- **Repeatability:** artifacts, logs, and assumptions are preserved so results can be reproduced

## Typical workflow
1. **Scope the intent:** what must be true (and under which assumptions)
2. **Define the interface:** clocks/resets/handshakes; avoid underspecified properties
3. **Decompose:** create a staged plan (invariants / helper lemmas first)
4. **Run and refine:** use counterexamples to repair constraints and properties
5. **Measure evidence:** coverage/vacuity checks; avoid “proved but meaningless”

## Where this shows up on my site
- Floating-point case study: proof decomposition + refinement  
- Publications: canonical paper links and write-ups

{{< cta title="Want to discuss a formal verification problem?" subtitle="Send the block type, what’s failing (CEX/vacuity), and your tooling. I’ll respond with a structured plan." primaryText="Contact" primaryLink="/contact/" secondaryText="Case studies" secondaryLink="/case-studies/" >}}
