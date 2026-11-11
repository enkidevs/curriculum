---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: When the task doesn't fit the template, build a prompt for the task.
    requiredConcepts:
      - The task needs its own prompt.
    acceptedAnswers:
      - Write a new prompt for this task.
      - The template doesn't fit; make one that does.
      - This task needs a custom prompt.
    hints:
      - Should the task bend to the template?
      - What's being lost?
    tooVagueExamples:
      - Change something.
      - It's wrong.
    incorrectExamples:
      - Add one more field to the template.
      - Summarize the source first.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A template built for weekly volume can hide what makes a single incident different.
    requiredConcepts:
      - The format hides what makes this case different.
    acceptedAnswers:
      - The format hides what made this case different.
      - One line each loses where their stories differ.
      - It treats a one-off incident like routine volume.
    hints:
      - What was the weekly template built to do?
      - What does this incident need that one line each can't show?
    tooVagueExamples:
      - The template does not fit.
      - It looks messy.
    incorrectExamples:
      - A single incident never contains enough material for a template.
      - The template necessarily changes the facts of the recall.

---

# When A Template Hides The Task

---
## Content

**A template stops helping when you change the task to make it fit.**

**🚫 Forced into the template**

```plain-text
Weekly complaints digest. One line per complaint, grouped by site. Flag repeats within 30 days. Source: three messages about the recall.
```

**✅ Written for the task**

```plain-text
Three customers reported the same batch recall. Summarize what each person needs, note where their accounts differ, and draft two questions we must answer before replying.
```

The weekly template is built to compare many complaints. This task is about differences inside one unusual incident.

> ‼️ If you must remove important details to make the template work, write a prompt for the actual task instead.

---
## Practice

You're leaving important details out just so a task fits your saved template. What does that tell you?

???

- The task needs its own prompt built for its shape.

---
## Revision

Three complaints about one product recall go through your weekly template: one line each, grouped by site. What goes wrong?

???

- The format hides what made this case different.
