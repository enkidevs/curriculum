---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The same prompt can behave differently when users have different models, tools, apps, memory, permissions, or workspace settings.
    requiredConcepts:
      - ChatGPT's setup can differ between users or chats.
      - Reproducing a workflow requires more than copying its prompt.
    acceptedAnswers:
      - The users may have different models, tools, apps, memory, or workspace settings enabled.
      - An identical prompt does not guarantee an identical setup, so the workflow may have different information or capabilities.
      - One account may be missing a required tool or may add different saved context before the prompt runs.
    hints:
      - What else reaches the model besides the visible prompt?
      - Do both users have the same tools and account permissions?
    tooVagueExamples:
      - ChatGPT is inconsistent.
      - Their accounts are different.
    incorrectExamples:
      - An identical prompt always uses an identical setup.
      - The difference must be caused by the time of day.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Where ChatGPT Falls Short

---
## Content

Because ChatGPT has so many options, two people's setups can differ a lot.

The selected model, tools, connected apps, memory, permissions, and workspace settings can all differ between users or chats.

**So a prompt that works for one teammate may fail or behave differently for another.** Even the same person can change the setup by starting a different mode or turning a feature on.

For repeatable work, write down:

- the prompt
- the model, tools, and apps it needs
- the files it uses
- important settings

> ‼️ A common mistake is sharing only the prompt. Share the tools and apps it needs too.

---
## Practice

Two teammates use an identical prompt but get different behavior. What should they compare besides the wording?

???

- Their model, tools, apps, memory, permissions, and workspace settings.

---
## Revision

Your ChatGPT prompt charts sales files from Google Drive but fails for a teammate. You should also have shared ???.

- the connected apps
- the result's timestamp
- a sample output
- your discarded answers
