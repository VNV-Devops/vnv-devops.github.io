---
title: "SystemVerilog and SVA"
description: "How I write SystemVerilog Assertions: signal discipline, temporal intent, vacuity resistance, and scalable property structure."
keywords: ["SystemVerilog", "SVA", "assertions", "temporal logic", "vacuity", "formal verification"]
---

{{< abstract title="Summary" kicker="Topic (properties)" >}}
SVA is not just syntax—good assertions encode intent precisely, resist vacuity, and scale with a proof plan. I write SVA with explicit assumptions, clear temporal structure, and reusable patterns.
{{< /abstract >}}

{{< metric_strip >}}
- **Principles:** clarity · vacuity resistance · minimal assumptions  
- **Patterns:** interface contracts · invariants · refinement lemmas  
{{< /metric_strip >}}

## What “good SVA” means in practice
- **Signal discipline:** assertions reference stable, meaningful signals (not accidental internals)
- **Temporal intent:** preconditions and consequences are separated clearly
- **Assumptions are explicit:** environment constraints are documented and reviewable
- **Vacuity checks:** proved properties should still be *informative*

## Common patterns I use
- **Interface contracts:** request/ack, ready/valid, FIFO rules
- **Safety properties:** “this bad thing never happens”
- **Liveness under assumptions:** “eventually” properties only where appropriate
- **Helper lemmas:** small provable stepping stones for complex end-to-end goals

## Where this shows up on my site
- Formal case studies (proof structure)
- Publications (property strategy and evaluation)

{{< cta title="Need help structuring assertions for a block?" subtitle="Share your interface, clock/reset, and 2–3 intent statements. I’ll respond with a property decomposition and patterns." primaryText="Contact" primaryLink="/contact/" secondaryText="Formal verification topic" secondaryLink="/topics/formal-verification/" >}}
