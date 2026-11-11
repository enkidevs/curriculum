---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Mixing every part into one paragraph can cause one or more instructions to go unfollowed.
    requiredConcepts:
      - one or more instructions may quietly go unfollowed
    acceptedAnswers:
      - Some instructions can quietly go unfollowed.
      - Without signposts, AI cannot clearly separate the task, audience, rules, and data.
      - A rule can look like just another clause when every job is packed into one paragraph.
    hints:
      - How many different jobs share that one paragraph?
      - Which small rule could look like just another detail?
    tooVagueExamples:
      - The prompt is too long.
      - AI gets confused.
    incorrectExamples:
      - AI always follows only the final instruction.
      - Pasted data is always ignored when it shares a message with instructions.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Change how the prompt is laid out before cutting useful detail.
    requiredConcepts:
      - Fix the layout rather than cutting detail.
    acceptedAnswers:
      - Reorganize it into labeled sections.
      - Add structure so the parts stand apart.
      - How it's laid out, not what it includes.
    hints:
      - Is the detail the problem?
      - How could AI find each part more easily?
    tooVagueExamples:
      - Make it better.
      - Simplify it.
    incorrectExamples:
      - Cut the context down.
      - Move one instruction to the start.

---

# Signposts For Long Prompts

---
## Content

**When several jobs share one paragraph, a smaller instruction can be easy for AI to miss.**

```plain-text
Write a one-page summary of our cleaning contracts for the operations director. Focus on missed visits and cost changes across our 14 sites, and flag any contractor we've raised an issue with twice. Keep the tone neutral. The visit logs are below. Do not include anything dated after the 20th.
```

That paragraph contains the task, reader, priorities, an exception, the tone, and a date cutoff. None of them is labeled.

> 💡 Label each part, so a rule doesn't read as one more detail.

---
## Practice

What tends to happen when a prompt mixes the task, reader, tone, a date cutoff, and data into one paragraph?

???

- Some instructions can quietly go unfollowed.

---
## Revision

Your twelve-line prompt is getting less reliable, but every detail is useful. What should you change first?

???

- The layout, so each part is clearly separated.
