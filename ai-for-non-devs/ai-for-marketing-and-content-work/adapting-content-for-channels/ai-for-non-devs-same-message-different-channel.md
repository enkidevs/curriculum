---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Tell the assistant what each channel version must do and how it should be structured, while the core message stays the same.
    requiredConcepts:
      - Each version gets its own purpose or structure for its channel.
    acceptedAnswers:
      - What each version is for, like the caption grabbing attention and the email explaining next steps.
      - Give each channel its own order and format, but keep the same message.
      - Different jobs and layouts per channel, same product claim.
    hints:
      - Should a caption and an email do the same thing?
      - What changes between channels, and what stays true?
    tooVagueExamples:
      - Make them more different.
      - Add more channel detail.
    incorrectExamples:
      - Change the audience for every channel.
      - Invent a new product benefit for each version.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Same Message, Different Channel

---
## Content

Start with one approved message: existing customers can now schedule automatic invoice reminders.

Each channel has a different job for that same customer:

- a social caption gives one reason to stop scrolling
- an email explains the change and the next step
- a short script shows the setup and result in sequence

Here's a prompt that asks for all three:

```plain-text
Adapt this message for the three channels above. Keep the product claim unchanged, but alter the emphasis, order, and format to fit each job.
```

**The message stays the same, and each version is built around its channel's job.**

> 💡 Tell AI what each version has to do in its channel.

---
## Practice

AI returns the same paragraph under "social," "email," and "video." What should your prompt tell it about each version?

???

- What each one needs to do there, and the shape that fits it.

---
## Revision

Across channel adaptations, what should stay stable is the ???.

- approved message
- sentence order
- amount of detail
- paragraph count
