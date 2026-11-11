---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: At a step where two tokens have nearly equal chances, since a tiny rounding difference can flip which one is likeliest.
    requiredConcepts:
      - Where two tokens are nearly tied, or have almost equal chances.
    acceptedAnswers:
      - Where two tokens are nearly tied.
      - At a close call between two next tokens.
      - When the top two tokens have almost the same chance.
    hints:
      - At temperature 0, which token does the model pick?
      - What if two tokens are almost equally likely?
    tooVagueExamples:
      - Anywhere.
      - At random.
    incorrectExamples:
      - Only at the first token.
      - On the longest words.
      - When tokens have the same temperature.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Tiny rounding differences from batching flipped a near-tie between two tokens, or the provider updated the model.
    requiredConcepts:
      - Rounding differences when requests are batched, or a model update.
    acceptedAnswers:
      - Batching causes tiny rounding differences that flip a close call.
      - The provider updated the model.
      - Two tokens were nearly tied, and rounding tipped it.
    hints:
      - Does temperature 0 rule out every source of difference?
      - What else changes between two calls on the provider's side?
    tooVagueExamples:
      - Randomness.
      - AI is unpredictable.
    incorrectExamples:
      - The temperature setting was ignored.
      - The model remembered the first call.

---

# Temperature Zero

---
## Content

At temperature 0 a model always takes the likeliest token. **Even so, two calls with the same prompt can come back different.**

Here's one prompt sent twice at temperature 0:

```plain-text
call 1: The invoice totals $1,240.50 and is due March 3.
call 2: The invoice totals $1,240.50, due March 3.
```

The replies split right after "$1,240.50", where the two likeliest next tokens, "and" and a comma, were almost exactly tied.

Two things can make the replies differ:

- **Batching.** Providers run many requests together in batches, and each batch does the math in a slightly different order. That causes tiny rounding differences, which are enough to change the winner when two tokens are nearly tied.
- **Model updates.** When the provider updates the model, replies can change even though your prompt didn't.

> ‼️ Code or tests that expect one exact reply string will fail now and then. Check the specific facts you need instead, like the total and the due date.

---
## Practice

At temperature 0, two calls with one prompt usually match word for word. Where are they most likely to differ?

???

- At a step where two tokens are nearly tied.

---
## Revision

You call a model twice at temperature 0 with the same prompt, and the wording differs. Name one cause.

???

- Rounding differences from batching flipped a near-tie, or the model was updated.
