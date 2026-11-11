---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A negative instruction fits when the excluded content is specific and the boundary matters on its own.
    requiredConcepts:
      - The excluded thing is specific and the boundary matters.
    acceptedAnswers:
      - When it blocks one specific thing that must never appear.
      - When there's a clear line that matters, like no quoting rates.
      - When it names exactly what's off-limits and why it counts.
    hints:
      - Is the excluded thing vague or specific?
      - Would breaking it cause real harm?
    tooVagueExamples:
      - When it's important.
      - Sometimes.
    incorrectExamples:
      - When the tone is hard to describe.
      - When the first answer came back weak.

---

# When Constraints Belong

---
## Content

Positive instructions are the default, not an absolute rule. **Keep a constraint when the boundary matters on its own**:

- specific content to exclude, such as a name or figure
- a hard format limit, such as 150 words
- a compliance or safety claim that must not appear

For example:

```plain-text
Explain in plain English why the mortgage application needs more documents. Stay under 150 words and end with the next step. Do not quote or estimate an interest rate. Do not suggest that approval is likely.
```

The positive instructions give the target. The two "don'ts" rule out the claims that must never appear.

> 💡 Use both when needed: a clear target and the non-negotiable limits around it.

---
## Practice

Your prompt for a damaged-laptop reply already says: apologize, explain the replacement, under 100 words. The one "don't" worth adding: Don't ???.

- promise a date
- sound robotic
- make it confusing
- be too wordy

---
## Revision

When does a "don't" instruction still belong in a prompt?

???

- When it rules out something specific and the boundary matters.
