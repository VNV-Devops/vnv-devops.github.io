---
title: "Publications"
description: "Selected publications by Vaisakh Naduvodi Viswambharan in AI-assisted verification, hardware design/verification automation, and safety-critical ECU research."
keywords: ["Vaisakh", "Vaisakh Naduvodi Viswambharan", "publications", "digital verification", "hardware verification", "EDA", "generative AI", "agentic AI", "formal verification", "TU Dresden"]
---

{{< abstract kicker="Evidence (papers, venues, artifacts)" >}}
This page lists published and accepted research work. Each entry is written as a **mini-paper**: venue context, contribution summary, and artifact links.
{{< /abstract >}}


{{< metric_strip >}}
- **Google Scholar:** https://scholar.google.com/citations?user=d1vnfGEAAAAJ&hl=en
- **ORCID:** https://orcid.org/0009-0002-1101-1285
{{< /metric_strip >}}

## 2025

{{< artifact_card
  title="Hey AI, Generate Me a Hardware Code! Agentic AI-based Hardware Design & Verification"
  meta="Conference paper (IEEE / SBCCI) · 31 Oct 2025"
  href="https://ieeexplore.ieee.org/document/11218681"
  cta="Open on IEEE Xplore →"
  tags="Agentic AI,Verification automation,RTL,Evaluation"
>}}
An agent-based approach to hardware design and verification that combines AI agents with human-in-the-loop iteration to converge toward working verification flows.

**Key contributions**
- Iterative agentic workflow that self-corrects over multiple passes
- Evaluation across representative designs with strong coverage outcomes
- Emphasis on usability and configurability, not just a one-off demo
{{< /artifact_card >}}

{{< artifact_card
  title="Formal that “Floats” High: Formal Verification of Floating Point Arithmetic"
  meta="To appear (IEEE ICM 2025) · 14–17 Dec 2025 · Cairo, Egypt · Preprint: 7 Dec 2025"
  href="https://www.arxiv.org/abs/2512.06850"
  cta="Open arXiv preprint →"
  tags="Formal,RTL-to-RTL,Floating-point,Helper assertions,Refinement"
>}}
A scalable approach to floating-point verification using direct RTL-to-RTL model checking against a golden reference, supported by staged helper assertions and counterexample-guided refinement.

**Key contributions**
- RTL-to-RTL checking to reduce abstraction gaps and translation overhead
- Divide-and-conquer proof structure with modular stages and helper lemmas
- AI-assisted property generation with human refinement, plus coverage-driven analysis
{{< /artifact_card >}}

## 2022

{{< artifact_card
  title="Thermal Alarm Handling in Safety Critical ECUs for Automated Vehicle Using AI and Machine Learning"
  meta="SAE Technical Paper · 5 Oct 2022"
  href="https://www.sae.org/papers/thermal-alarm-handling-safety-critical-electronic-control-units-automated-vehicle-using-ai-machine-learning-2022-28-0125"
  cta="Open on SAE →"
  tags="Safety-critical ECUs,AI/ML,Validation,Requirements"
>}}
Improving thermal monitoring robustness in safety-critical ECUs by incorporating real-world use-cases that are often missed during design-time validation, with a focus on reducing false triggering and validation cost.

**Key contributions**
- Highlights gaps between lab validation and real-world thermal events
- Motivates stronger characterization and scenario coverage for robust monitoring
- Practical impact: fewer false warnings and reduced validation/warranty cost
{{< /artifact_card >}}

## Related topics
- [Formal verification methodology](/topics/formal-verification/)
- [Property writing (SystemVerilog/SVA)](/topics/systemverilog-sva/)
- [GenAI for EDA workflows](/topics/genai-for-eda/)

{{< cta
  title="Want the artifacts behind the papers?"
  body="If you want to discuss the workflows behind these results—formal proof structure, automation, or GenAI-assisted verification—reach out."
  primary_text="Contact"
  primary_href="/contact/"
  secondary_text="Browse Projects"
  secondary_href="/projects/"
>}}
