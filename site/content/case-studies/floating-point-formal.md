---
title: "Floating-point formal verification"
description: "RTL-to-RTL model checking for floating-point arithmetic using helper assertions and refinement."
keywords: ["formal verification", "floating point", "RTL-to-RTL", "SVA", "model checking"]
---

## Abstract
A scalable approach to floating-point verification using direct RTL-to-RTL model checking against a golden reference model, supported by staged helper assertions and refinement.

## Problem
Floating-point blocks are correctness-critical and difficult to verify comprehensively with simulation alone.

## Approach
- Direct RTL-to-RTL checking to reduce translation/abstraction gaps
- Divide-and-conquer proof structure with helper lemmas
- Iteration driven by counterexamples and coverage

## Evidence
- Accepted/appearing work (see Publications for canonical links)
- Demonstrated proof decomposition strategy and verification workflow

## Stack
SystemVerilog, SVA, formal tooling, Python automation

## Links
See the relevant entries in **Publications** for preprint and venue links.

## Next
If you are building proof structures for complex arithmetic blocks, I am open to collaboration.
