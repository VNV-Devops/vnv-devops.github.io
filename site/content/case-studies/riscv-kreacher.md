---
title: "RISC-V “Kreacher”"
description: "RTL design + SoC integration contributions focused on correctness, clean interfaces, and integration readiness."
keywords: ["RISC-V", "RTL design", "SoC", "integration", "SystemVerilog", "verification"]
---

{{< abstract title="Abstract" kicker="Case study (RTL + integration)" >}}
A collaborative RISC-V processor integrated into a SoC environment, with contributions focused on datapath correctness and clean integration interfaces.
{{< /abstract >}}

{{< metric_strip >}}
- **Scope:** datapath modules · integration boundaries · correctness discipline  
- **Stack:** SystemVerilog · RTL integration workflow  
- **Note:** code is not public (team project)  
{{< /metric_strip >}}

## Problem
SoC integration requires stable interfaces, disciplined block boundaries, and correctness-first implementation to avoid late-stage integration regressions.

## Approach
- Implemented datapath modules including ALU and decoder
- Focused on functional accuracy and clean integration
- Kept interfaces predictable for SoC-level bring-up

## Evidence
Work product exists as team integration deliverables (code not public). I can share details that are safe to discuss.

{{< cta title="Want a technical walkthrough?" subtitle="If you are hiring or collaborating, send the role/block focus and what you want to evaluate (RTL quality, verification approach, integration ownership)." primaryText="Contact" primaryLink="/contact/" secondaryText="Experience" secondaryLink="/topics/systemverilog-sva/"
 >}}
