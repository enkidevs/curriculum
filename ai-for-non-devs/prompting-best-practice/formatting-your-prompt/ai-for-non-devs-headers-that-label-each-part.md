---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Headings keep the prompt's individual instructions visibly separate.
    requiredConcepts:
      - headings keep individual instructions visibly separate
    acceptedAnswers:
      - Headings keep each instruction visibly separate.
      - They stop the task, audience, rules, and material from blurring into one paragraph.
      - Labels create clear boundaries between the different parts of the prompt.
    hints:
      - Think about what a label like Task or Rules tells AI.
      - What happens to separate instructions packed into one paragraph?
    tooVagueExamples:
      - They organize the prompt.
      - They make it clearer.
    incorrectExamples:
      - They shorten the prompt automatically.
      - They guarantee that every instruction will be followed.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Separate labeled sections for task, audience, rules, and data make the prompt clearest.
    requiredConcepts:
      - Each kind of information gets its own labeled section.
    acceptedAnswers:
      - "Use headings: Task, Reader, Rules, Data."
      - Put each part under its own label.
      - Split it into labeled blocks for each type of information.
    hints:
      - How would AI tell the rules from the data?
      - What could label each part?
    tooVagueExamples:
      - Make it clear.
      - Organize it well.
    incorrectExamples:
      - One paragraph with the key instruction first.
      - A numbered list mixing rules and data.

---

# Headers As Labels

---
## Content

**Use short headers to give each part of your prompt one job.**

You saw this in the full CO-STAR prompt, which used labels such as `## Context` and `## Objective`. The `##` makes each label a Markdown header.

Here's the cleaning contract prompt with each part under a header:

```plain-text
## Task
Write a one-page summary of the cleaning contract review.

## Reader
The operations director. Focus on missed visits and cost changes.

## Rules
Use a neutral tone. Include records through the 20th only. Flag contractors with two recorded issues.
```

> 💡 Your labels do not have to match CO-STAR. Use names that clearly say what each section does.

---
## Practice

How do headings help a long prompt hold together?

???

- Headings keep each instruction visibly separate.

---
## Revision

Your prompt has a task, a note on who'll read it, three rules, and a page of data. How should you lay it out?

???

- Give each kind of information its own labeled section.
