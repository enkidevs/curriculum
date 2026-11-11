---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: No. It fails a hard requirement, so its quality doesn't matter.
    requiredConcepts:
      - Leave it off the shortlist, because it fails a hard requirement.
    acceptedAnswers:
      - No, data residency is a hard requirement.
      - No. Failing a must-have rules it out whatever its quality.
      - Leave it off; quality can't make up for the EU rule.
    hints:
      - Is EU data residency negotiable for your app?
      - Can a better score make up for a broken rule?
    tooVagueExamples:
      - Maybe.
      - It depends on the score.
    incorrectExamples:
      - Yes, quality matters most.
      - Yes, and add a line to the prompt about the EU.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Very little, because each input is tiny and fits in any model's context window.
    requiredConcepts:
      - Little or none, because the inputs are short.
    acceptedAnswers:
      - Hardly any, since the messages are tiny.
      - Almost none, since any window fits one line.
      - Low. Short inputs fit every model.
    hints:
      - How many tokens is one line?
      - Would any model run out of room?
    tooVagueExamples:
      - Some.
      - It depends.
    incorrectExamples:
      - A lot, since bigger windows give better answers.
      - It should be the first filter.

---

# Capability Fit

---
## Content

Before you test any models, write down what your feature needs. **Some needs are hard limits that rule a model out, however good it is.**

Say you're adding a receipt reader to an expense app used in Germany and France. It needs:

- **Languages:** German and French
- **Structured output:** JSON that fits your schema
- **Deployment:** data stays in the EU
- **Latency:** answers within 3 seconds
- **Cost:** under half a cent per receipt

You can check the first three in each provider's docs. Here are three candidates:

```plain-text
Model A: all three yes   -> test it
Model B: no EU option    -> dropped
Model C: all three yes   -> test it
```

Model B is out, because keeping data in the EU is a hard limit.

The last two you measure by running the shortlist on a sample of your own receipts.

Context window size barely matters here, because a receipt is a few hundred tokens. For a feature that reads 300-page contracts, it would be near the top of the list.

---
## Practice

Your app's data must stay in the EU. A model scores best on quality but can't guarantee that. Shortlist it?

???

- No. It fails a hard requirement, whatever its quality.

---
## Revision

Your feature classifies one-line chat messages. How much weight should context window size get when shortlisting?

???

- Very little, since every message easily fits any model's window.
