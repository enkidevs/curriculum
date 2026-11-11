---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: When several jobs run in one prompt, a weak final result cannot be traced to the particular step that went wrong.
    requiredConcepts:
      - You cannot tell which step failed.
    acceptedAnswers:
      - You cannot tell which of the five steps went wrong.
      - You cannot identify which step caused the weak slide text.
      - The failure cannot be traced to a particular step.
    hints:
      - Think about the five separate jobs in the prompt.
      - What is impossible to identify when all five jobs run together?
    tooVagueExamples:
      - The prompt has too much in it.
    incorrectExamples:
      - The source responses must not have contained enough detail.
      - The problem is simply that the prompt is long.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Headings can't fix a prompt doing several dependent jobs at once without checks between them.
    requiredConcepts:
      - The prompt chains several dependent jobs in one go, with no check in between.
    acceptedAnswers:
      - Too many linked steps in one prompt.
      - You can't check the themes before the replies are written.
      - It should be split so each step can be checked.
    hints:
      - How many jobs is the prompt doing?
      - Could you check the themes before the replies?
    tooVagueExamples:
      - It's too long.
      - The headings are wrong.
    incorrectExamples:
      - It needs more complaints to work with.
      - The headings should be in bold.

---

# One Prompt, Too Many Tasks

---
## Content

Some prompts contain too many tasks for headings to solve:

```plain-text
Read these 20 exit survey responses, group them into themes, pick the three biggest, write the slide text for each, and suggest what we should change next quarter.
```

That's five jobs in one message, and each one depends on the one before.

**Headers could separate the instructions, but they would not create a checkpoint between grouping, ranking, writing, and recommending.**

If the slide text is weak, you cannot tell whether the grouping failed, the ranking failed, or only the writing failed.

> 💡 Format a long prompt when it has one job. Split it when an intermediate result needs checking before the next job uses it.

---
## Practice

One prompt does five linked jobs ending in slide text, and the slides come back thin. What can't you tell?

???

- You cannot tell which of the five steps went wrong.

---
## Revision

One prompt with clear headings sorts complaints into themes, picks the top three, and drafts replies. The replies are weak. What's the likely problem?

???

- It does several linked jobs at once, with no chance to check the themes first.
