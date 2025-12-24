---
title: "Projects"
description: "Selected projects in digital design, verification, and GenAI-assisted engineering workflows."
keywords: ["projects", "digital verification", "formal verification", "UVM", "SystemVerilog", "SVA", "GenAI", "EDA", "RISC-V", "FP", "SaxoFlow"]
---

{{< abstract kicker="Blocks (what I build and ship)" >}}
This page highlights projects that represent what I want to be known for: **digital chip design**, **verification**, and **practical use of GenAI** in engineering workflows.  
Each item is written as an artifact: what it is, what I owned, and what evidence exists.
{{< /abstract >}}


## Featured

{{< artifact_card
  title="SaxoFlow — Open-source design + verification suite (AI-assisted)"
  meta="Aug 2025–present · Personal / open-source"
  href="/case-studies/saxoflow/"
  cta="Read case study →"
  tags="GenAI tooling,EDA,Automation,Verification"
>}}
SaxoFlow reduces setup friction and repetitive work by combining open-source EDA tools with GenAI-assisted workflows.

**What exists today**
- Interactive CLI to install and manage open-source EDA tools
- Agents supporting RTL, testbench-based verification, and formal verification
- Copilot-style navigation for flows and debugging

**What I’m building next**
- Retrieval-grounded help (RAG) over docs/specs/project context
- Lightweight IDE experience so students can use the flow without living in the terminal
{{< /artifact_card >}}

{{< artifact_card
  title="Floating-point formal verification — RTL-to-RTL model checking"
  meta="Formal verification workflow · Proof decomposition + refinement"
  href="/case-studies/floating-point-formal/"
  cta="Read case study →"
  tags="Formal,SVA,Floating-point,Proof structure"
>}}
A scalable verification approach for floating-point arithmetic using direct RTL-to-RTL model checking against a golden reference, supported by staged helper assertions and refinement.
{{< /artifact_card >}}

{{< artifact_card
  title="RISC-V Processor “Kreacher” — RTL design + SoC integration"
  meta="Oct 2024–present · Team project · SystemVerilog"
  href="/case-studies/riscv-kreacher/"
  cta="Read case study →"
  tags="RTL,RISC-V,SoC,Integration"
>}}
A collaborative RISC-V processor integrated into a SoC environment, with emphasis on correctness and integration readiness.

**My contributions**
- Implemented datapath modules including the **ALU** and **decoder**
- Focused on functional accuracy and clean integration
{{< /artifact_card >}}

## Additional technical projects

{{< artifact_card
  title="Neural Processing Unit blocks — BatchNorm + Softmax processing elements"
  meta="Feb 2024–Aug 2024 · SystemVerilog / Vivado"
  tags="RTL,SystemVerilog,NPU,SoC-style design"
>}}
Designed configurable processing elements and supporting control/memory components for Batch Normalization and Softmax.

**What I built**
- Configurable compute blocks, memory + control units, and integration logic
- Post-implementation functional simulation and timing simulation

**Outcome**
- Exceeded state-of-the-art benchmarks in performance and resource utilization in Vivado *(details available on request)*
{{< /artifact_card >}}

{{< artifact_card
  title="Physical design optimization — Carry-save array multiplier"
  meta="Apr 2023–Jul 2023 · Cadence Virtuoso / Genus / Innovus"
  tags="PPA,Physical design,Floorplanning,Place & route"
>}}
Optimized the physical design of a carry-save array multiplier with a practical PPA focus.

**Outcome**
- Reduced area by **~60%** and improved performance by **~4×** through floorplanning and placement strategy changes
{{< /artifact_card >}}


## Related topics
- [Formal verification approach](/topics/formal-verification/)
- [Writing SVA well](/topics/systemverilog-sva/)
- [GenAI workflows](/topics/genai-for-eda/)


{{< cta
  title="Want to see the evidence trail end-to-end?"
  body="If you’re hiring for verification, building proof-oriented flows, or evaluating GenAI-assisted verification automation, reach out. I can share additional artifacts that are safe to discuss."
  primary_text="Contact"
  primary_href="/contact/"
  secondary_text="Publications"
  secondary_href="/publications/"
>}}
