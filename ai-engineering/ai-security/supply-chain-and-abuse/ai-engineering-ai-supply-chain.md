---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A hosted alias needs its resolved model ID and observed date recorded; rerunning evals when it changes is a strong extra.
    requiredConcepts:
      - The actual model ID or version behind the alias, and when it was observed.
    acceptedAnswers:
      - The resolved model ID per response, with the date.
      - Which exact model the alias pointed to, and when.
      - Resolved model version over time, plus eval results.
    hints:
      - Does the alias name tell you which model ran?
      - What can change behind a name you never edited?
    tooVagueExamples:
      - The model.
      - More logs.
    incorrectExamples:
      - The alias name and the app commit.
      - Average latency per day.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A dated snapshot stays unchanged until the provider retires it, so the model changes only when your team updates the pin, ideally after the evals pass.
    requiredConcepts:
      - Only when your team changes the pinned name, or when you update it yourself.
    acceptedAnswers:
      - Only when we update the pin ourselves.
      - When our team switches it, after the evals pass.
      - Never on its own; only on our next change.
    hints:
      - Who can change what a dated snapshot points to?
      - What does the provider do with an alias like chat-latest?
    tooVagueExamples:
      - Rarely.
      - When it's updated.
    incorrectExamples:
      - Whenever the provider releases a newer model.
      - Every night, like an alias.

---

# AI Supply Chain

---
## Content

Your AI feature depends on models, datasets, embedding models, and libraries you didn't build. Together they're your AI supply chain, and any of them can change without your team choosing to, or arrive tampered with.

Here's how an internal search assistant first named its chat model:

```plain-text
model: chat-latest
```

`chat-latest` is a provider alias. It points to whatever model the provider serves under that name.

Many APIs return the exact model behind an alias with each response, and the assistant's log showed this:

```plain-text
Jun 1  chat-latest  ->  chat-2026-03-15
Jun 2  chat-latest  ->  chat-2026-06-01
```

The model changed overnight with no deploy, and answers shifted with it. Logging that field is how you spot the switch.

Pinning a dated snapshot fixes it:

```plain-text
model: chat-2026-06-01
```

**A dated snapshot names one model version, which the provider keeps unchanged until it retires it.** The model now changes only when your team updates the pin, ideally after the evals pass.

---
## Practice

Your app calls the model alias `chat-latest`. Answers shifted with no deploy. What should you have recorded?

???

- The model ID the alias resolved to, with the date.

---
## Revision

Your app now calls the dated snapshot `chat-2026-06-01`. When will the model it calls change?

???

- Only when your team updates the pin.
