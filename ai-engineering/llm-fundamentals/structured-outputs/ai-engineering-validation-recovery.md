---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model isn't told what failed, so it can make the same mistake again.
    requiredConcepts:
      - The model doesn't know what went wrong.
    acceptedAnswers:
      - Nothing tells the model what was wrong.
      - It gets the same request, so it can return the same reply.
      - The error isn't sent back, so the model can't fix it.
    hints:
      - What does the model see on the second try?
      - What would help it fix the reply?
    tooVagueExamples:
      - Models are random.
      - It's a bad retry.
    incorrectExamples:
      - The temperature is too low.
      - The model remembers the first reply and repeats it.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each retry is another paid call and more waiting, and repeated failures point to a prompt or schema problem, so retries need a cap of one or two.
    requiredConcepts:
      - Retries cost money and time, or repeated failures mean the prompt or schema needs fixing.
    acceptedAnswers:
      - Every retry is another paid call and more waiting.
      - It needs a cap, since repeat failures point to the prompt or schema.
      - It could loop for a long time and run up the bill.
    hints:
      - What does each retry cost?
      - What does the same failure twice usually mean?
    tooVagueExamples:
      - It's inefficient.
      - It might not work.
    incorrectExamples:
      - Nothing, it eventually passes.
      - The model gets annoyed by repeated requests.

---

# Validation Recovery

---
## Content

When a reply fails validation, the most common fix is to ask the model again. **What that retry says decides whether it works.**

Say a model returns a product listing with no `category`:

```plain-text
{"title": "Bamboo Board", "bullets": ["Hand wash"]}
```

A plain retry sends the same request again. The model isn't told what went wrong, so it can make the same mistake.

A better retry adds the error to the request:

```plain-text
Your last reply failed validation: missing field "category".
category must be one of: kitchen, bath, garden.
```

Now the model knows what to fix, and the next reply includes it:

```plain-text
{"title": "Bamboo Board", "bullets": ["Hand wash"],
 "category": "kitchen"}
```

> ‼️ Retrying until a reply passes runs up cost and wait time. Cap retries at one or two, and if the same error keeps coming back, fix the prompt or schema.

---
## Practice

After a reply fails validation, your app resends the exact same request. Why might it fail again?

???

- The model isn't told what failed, so it can repeat it.

---
## Revision

Your app retries a failed reply until one passes validation. What's the problem with that?

???

- Each retry costs a paid call and more waiting, so cap it.
