---
title: "SaxoFlow"
description: "Open-source design + verification suite with GenAI-assisted workflows to reduce setup friction and repetitive verification loops."
keywords: ["SaxoFlow", "EDA", "formal verification", "UVM", "SVA", "GenAI", "automation", "open-source"]
---

{{< abstract title="Abstract" kicker="Case study (open-source tooling)" >}}
SaxoFlow is an evidence-first design + verification workflow that combines open-source EDA tools with GenAI-assisted generation and iteration loops—built to make learning and prototyping faster and more systematic.
{{< /abstract >}}

{{< metric_strip >}}
- **Focus:** verification workflow automation + reproducibility  
- **Stack:** Python · SystemVerilog · SVA · open-source EDA ecosystem  
- **Artifacts:** CLI flows · agent-assisted generation · logs/evidence trail  
{{< /metric_strip >}}

## Problem
Digital design and verification iteration is slowed down by environment setup, tool fragmentation, and repeated manual loops (install → run → debug → re-run).

## Approach
- CLI-driven installation and orchestration for open-source tooling
- Agent-assisted RTL, testbench, and property generation
- Evidence-first workflow: outputs are saved as artifacts; iterations are repeatable

## Evidence and artifacts
{{< artifact_card
  title="Repository"
  subtitle="SaxoFlow starter repo (public)"
  meta="Open-source · active development"
  link="https://github.com/saxoflowlabs/saxoflow-starter"
  cta="Open on GitHub →"
  tags="Open-source,EDA,GenAI,Automation"
>}}
Core entry point for the project, including documentation and current workflow capabilities.
{{< /artifact_card >}}

## What I’m building next
- Retrieval-grounded help (RAG) over docs/specs/project context
- A lightweight IDE experience so students don’t live in the terminal

{{< cta title="Interested in evaluating SaxoFlow?" subtitle="If you want to test it in your verification flow or collaborate on workflow automation, reach out with your block context and constraints." primaryText="Contact" primaryLink="/contact/" secondaryText="Projects" secondaryLink="/projects/" >}}
