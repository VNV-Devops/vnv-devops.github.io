---
title: "GenAI for EDA"
description: "How I apply GenAI to EDA workflows: tool-centric pipelines, structured artifacts, and evidence-first iteration loops."
keywords: ["GenAI", "EDA", "agentic AI", "verification automation", "tooling", "workflows", "SaxoFlow"]
---

{{< abstract title="Summary" kicker="Topic (workflows)" >}}
I use GenAI where it creates leverage: generating structured artifacts, accelerating iteration loops, and reducing repetitive engineering work—while keeping an evidence trail so results remain trustworthy.
{{< /abstract >}}

{{< metric_strip >}}
- **Goal:** faster iteration without losing rigor  
- **Approach:** tool-centric pipelines · structured artifacts · reproducibility  
{{< /metric_strip >}}

## What I believe works (and what doesn’t)
**Works**
- Constraining generation with **structured schemas**
- Grounding with **project context** (specs, IRs, signal allowlists)
- Using LLMs for **draft → critique → repair** loops with tooling in the loop

**Doesn’t**
- “Prompt-only” pipelines without artifacts or traceability
- Generating assertions/tests without environment constraints
- Treating LLM output as truth without validation

## Where this shows up on my site
- SaxoFlow case study (tooling + workflow design)
- Projects (practical GenAI engineering work)

{{< cta title="Evaluating GenAI for verification or EDA tooling?" subtitle="If you want a pragmatic plan that is tool-first and evidence-first, share your workflow and constraints." primaryText="Contact" primaryLink="/contact/" secondaryText="SaxoFlow case study" secondaryLink="/case-studies/saxoflow/" >}}
