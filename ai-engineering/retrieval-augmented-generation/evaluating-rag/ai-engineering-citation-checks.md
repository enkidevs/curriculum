---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The citation points to a passage that was never sent, so the claim beside it has no source behind it.
    requiredConcepts:
      - The cited passage doesn't exist in what was sent, so the claim is unsupported.
    acceptedAnswers:
      - "[4] points to nothing, so that claim has no source."
      - The model cited a passage it was never given.
      - That claim isn't backed by any passage sent to the model.
    hints:
      - How many passages did the model receive?
      - What can a customer open when they click [4]?
    tooVagueExamples:
      - Something is off.
      - The citation is wrong.
    incorrectExamples:
      - Search found a fourth passage the app forgot to send.
      - The fourth passage was cut off by the token limit.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: That every cited number matches a passage that was actually sent to the model for that question.
    requiredConcepts:
      - Each citation points to a passage that was sent to the model.
    acceptedAnswers:
      - That each [n] matches a passage the model was sent.
      - That no citation points to a passage that wasn't sent.
      - Every cited source was in the passages sent to the model.
    hints:
      - What does each number in an answer refer to?
      - Which list can your code compare the numbers with?
    tooVagueExamples:
      - That it's correct.
      - The sources.
    incorrectExamples:
      - That every claim in the answer is true.
      - That the answer uses at least three sources.

---

# Citation Checks

---
## Content

Models sometimes cite a passage that was never sent.

**A citation check is code that compares the numbers cited in an answer with the passages your app actually sent.**

Here a docs bot sent two passages, and the answer came back like this:

```plain-text
API keys expire after 90 days [1]. You can renew
a key early under Settings > Keys [3].
```

The check returns:

```plain-text
[1] matches a sent passage
[3] no passage 3 was sent
```

The second claim looks just as sourced as the first, but nothing backs it, and a customer who clicks `[3]` gets a broken link.

> 💡 The check only compares numbers, so it costs almost nothing to run on every answer. When it fails, drop that sentence or regenerate the answer.

---
## Practice

Your bot's answer cites [4], but your app sent the model only three passages. What does that tell you?

???

- The claim beside [4] has no source behind it.

---
## Revision

Your bot's answers cite passages as [1], [2], and so on. What can code check automatically with those numbers?

???

- That each cited number matches a passage sent to the model.
