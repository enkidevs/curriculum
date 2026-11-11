---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A prompt can fail for a colleague because it relies on things its author knows but never wrote down.
    requiredConcepts:
      - The prompt relies on knowledge that was never written down.
    acceptedAnswers:
      - It leans on things you know and never wrote down.
      - It relies on context and definitions you know but never wrote down, so a colleague cannot use it the same way.
      - Shorthand such as "usual format" carries tacit knowledge for the author but gives a new user no usable instruction.
    hints:
      - What does shorthand like "the usual format" mean to someone new?
      - What do you know that isn't written in the prompt?
    tooVagueExamples:
      - The colleague reads it differently.
      - They're not used to it.
    incorrectExamples:
      - The assistant cannot understand workplace shorthand at all.
      - The prompt fails mainly because it reflects the author's writing style.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A shareable prompt works for someone without your unwritten knowledge.
    requiredConcepts:
      - Someone new could use it without help.
    acceptedAnswers:
      - Could a newcomer use it unaided?
      - Whether it works without me explaining it.
      - If someone else can run it cold.
    hints:
      - What do you know that isn't written down?
      - Who will run it?
    tooVagueExamples:
      - That it's good.
      - That it works.
    incorrectExamples:
      - That it worked more than once.
      - That it works across assistants.

---

# Prompts Other People Can Use

---
## Content

**Personal shorthand can make a shared prompt fail quietly**:

```plain-text
Pull the complaints for the ops call. Usual format. Flag the repeat ones.
```

The author knows what the call covers, what the usual format is, and what counts as a repeat. A new colleague does not.

Replace the shorthand:

```plain-text
Create a digest of the anonymized complaints for Tuesday's operations call. Focus on delivery issues. Treat a second complaint from the same customer within 30 days as a repeat. Use one line per complaint, grouped by site.
```

> 💡 If you would explain something while handing the prompt over, write it into the shared version.

---
## Practice

Why can a prompt that works reliably for its author fail when a colleague uses it?

???

- It leans on things you know and never wrote down.

---
## Revision

Before sharing a prompt with your team, what should you check?

???

- Whether a new colleague could run it without an explanation.
