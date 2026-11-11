---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A change made outside code, such as a prompt edited in an admin tool, still needs a new config version, or the records name a setup that no longer ran.
    requiredConcepts:
      - The edit gets a new config version number.
    acceptedAnswers:
      - Save the edit as a new config version.
      - Give the changed prompt a new config number.
      - Cut config 15 for the edit, keeping 14 as it was.
    hints:
      - Which config number will the next replies be stored with?
      - Did that config's prompt change?
    tooVagueExamples:
      - Track it.
      - Tell the team.
    incorrectExamples:
      - Nothing, since no code changed.
      - Note the edit in the prompt text itself.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Untracked Config Changes

---
## Content

Some parts of an AI feature change outside your code, like an index rebuilt overnight or a prompt edited in an admin tool.

If that change ships without a new config number, stored replies name a setup that no longer exists. That's called an untracked config change.

Here's what the carrier's support assistant stored for the same question, before and after an overnight index rebuild that got no new number:

```plain-text
before the rebuild, config 14:
  "Pausing your line is free."
after the rebuild, config 14:
  "Pausing your line costs $5 a month."
```

Both replies name config 14, so the record can't say which index produced which answer. Rerunning config 14 can't bring back the first answer either, because its index was replaced in place.

**Every change gets its own config number, wherever it's made.** Calling the rebuild config 15 would have kept the old index as config 14's and made both answers traceable.

---
## Practice

Your support bot's prompt lives in an admin tool, and someone edits it there with no code change. What keeps your reply records accurate?

???

- The edit gets its own new config version number.

---
## Revision

An index was rebuilt in place under config 14. An earlier config 14 reply now can't be ???.

- reproduced
- stored
- graded
- looked up
