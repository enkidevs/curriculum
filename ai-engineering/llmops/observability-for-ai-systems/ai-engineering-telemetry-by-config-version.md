---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A rise that starts with a config version points to whatever that version changed, such as its prompt, model, or index.
    requiredConcepts:
      - In what config 15 changed, such as its prompt, model, or index.
    acceptedAnswers:
      - Whatever changed between config 14 and 15.
      - The prompt or index that config 15 swapped in.
      - Compare config 15's parts with config 14's.
    hints:
      - When did the jump start?
      - What's different about config 15?
    tooVagueExamples:
      - The logs.
      - The cost data.
    incorrectExamples:
      - The provider's price list, since prices change.
      - A few of today's replies, read at random.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Grouping cost per request by configuration version shows which change the rise started with.
    requiredConcepts:
      - Group or split the cost numbers by configuration version, or compare versions.
    acceptedAnswers:
      - Break cost per request down by config version.
      - Compare cost per request before and after each configuration change.
      - Chart it by configuration version and see where it jumped.
    hints:
      - What does every request record about its setup?
      - Which version did the rise start with?
    tooVagueExamples:
      - Look at the logs.
      - Investigate the cost.
    incorrectExamples:
      - Read a few of this week's replies.
      - Check the provider's status page.

---

# Telemetry By Config Version

---
## Content

One telemetry record says little. A trend says more, and grouping it by config version shows which change started it.

Here's a week of the support assistant's cost per request, grouped by config:

```plain-text
cost per request, last 7 days
  config 14 (Mon to Wed):  $0.0019
  config 15 (Thu to Sun):  $0.0025
```

Cost rose about a third, starting exactly when config 15 went live.

**So the cause is among the parts config 15 changed.** Comparing input and output token counts then shows whether longer prompts or longer replies drove it.

Grouped by day alone, the same numbers would show a rise with nothing to tie it to.

---
## Practice

Cost per request jumped the day config 15 went live. Where do you look for the cause?

???

- In whatever config 15 changed, like its prompt or index.

---
## Revision

Cost per request rose 20% this week. How would you find which change caused it?

???

- Group cost per request by configuration version.
