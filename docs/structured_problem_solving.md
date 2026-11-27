## Structured Problem Solving

One skill that transfers directly from respiratory therapy to hardware engineering is structured problem-solving. In healthcare, I learned to use the SBAR (Situation, Background, Assessment, Recommendation) framework to communicate issues clearly and systematically. Although the technical domains are different, the approach is remarkably similar: identify the problem, gather relevant information, assess the root cause, and determine the next course of action.

Today, I apply that same mindset when debugging Verilog designs, analyzing simulation results, troubleshooting toolchain issues, and documenting lessons learned throughout the development process.

## SBAR Framework

The following template is used to document issues, debugging sessions, and lessons learned throughout this repository. It provides a consistent process for identifying problems, investigating root causes, documenting resolutions, and capturing knowledge for future reference.

| SBAR | Engineering |
|-------|------------|
| Situation | What is broken? |
| Background | What is the context? |
| Assessment | What is causing the problem? |
| Recommendation | How was it fixed, and how can it be prevented in the future? |

---

## Situation

What happened?

- What was I trying to do?
- What actually happened?
- What did I expect to happen instead?

---

## Background

What was the context?

- What project was I working on?
- What tools was I using?
- Did I recently change anything?
- Is there anything else future me should know?

---

## Assessment

What did I find?

- What errors, warnings, or failures occurred?
- What evidence did I collect?
  - Error messages
  - Warnings
  - Waveforms
  - Logs
  - Testbench output

### Suspected Cause

- What do I think caused the issue?

### Root Cause

- What was the actual cause after investigation?

---

## Recommendation

What did I do to fix it?

### Fix

- Describe the solution.

### Verification

- How did I confirm the issue was resolved?

### Future Me Notes

- What should I remember next time?

---

## Lessons Learned

- What concept, workflow, troubleshooting technique, or engineering principle did this reinforce?

See the full [SBAR Template](sbar_template.md)
