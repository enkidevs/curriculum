---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Splitting a request into a sequence lets you correct each step before it feeds the next one.
    requiredConcepts:
      - Each step can be corrected before it feeds the next one.
    acceptedAnswers:
      - You can correct each step before it feeds the next one.
      - You can review and correct each intermediate result before later steps build on it.
      - Splitting the work creates checkpoints that stop an early mistake from propagating through the whole output.
    hints:
      - What can you do between one step and the next?
      - What happens to later steps when an early mistake is fixed?
    tooVagueExamples:
      - It gives you more control.
      - It's more organized.
    incorrectExamples:
      - It guarantees that each individual step is accurate.
      - Its main benefit is avoiding pasting the source material more than once.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The first prompt produces the result the later steps build on.
    requiredConcepts:
      - Only the grouping into themes, the step the rest depends on.
    acceptedAnswers:
      - Group the answers into themes.
      - Just the themes, so I can check them first.
      - The grouping, because ranking and slides build on it.
    hints:
      - Which result do the other steps need?
      - What would break if it were wrong?
    tooVagueExamples:
      - The first part.
      - Something simple.
    incorrectExamples:
      - Write the three slides.
      - Pick the top three themes.

---

# A Sequence With Checkpoints

---
## Content

**Split dependent work into separate prompts, then check each result before the next prompt uses it**:

```plain-text
Prompt 1: Group these 20 exit survey responses into themes. Give each theme a count and one supporting quote.

Prompt 2: Using the corrected themes, select the top three by response count. Return their names and counts only.

Prompt 3: Using those three themes, write four lines of neutral slide text. Do not add recommendations.

Prompt 4: Using the approved slide text, suggest two changes for next quarter.
```

After each prompt, correct the result. An error in the themes no longer has to flow into the ranking, slides, and recommendations.

> 💡 A checkpoint between steps stops one mistake from becoming four.

---
## Practice

Why can splitting a dependent task into a sequence produce a more reliable result?

???

- You can correct each step before it feeds the next one.

---
## Revision

You split "Write slides on the top three themes in these survey answers" into a sequence. What goes in the first prompt?

???

- Just the themes, since everything after builds on them.
