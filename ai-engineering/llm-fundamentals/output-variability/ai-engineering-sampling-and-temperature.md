---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each token is a weighted random draw, and every later word builds on whichever token came out.
    requiredConcepts:
      - Each token is drawn at random by likelihood, or later words build on earlier random picks.
    acceptedAnswers:
      - Each token is a weighted random draw, so the runs drift apart.
      - The model samples each word, and later words build on it.
      - A different early pick changes everything after it.
    hints:
      - Does the model always take the likeliest token?
      - What happens to the words after a different pick?
    tooVagueExamples:
      - AI is random.
      - It changes its mind.
    incorrectExamples:
      - The model learns from the first run.
      - The provider rewrites replies to add variety.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Sampling And Temperature

---
## Content

A model writes its reply one token at a time, where a token is a word or part of a word.

**It picks each token at random, but likelier tokens get picked more often. This is called sampling.**

Say a tool that writes product descriptions has written "This waterproof jacket is" so far. The chances for its next token might look like this:

| Next token | Chance |
|---|---|
| lightweight | 40% |
| perfect | 25% |
| ideal | 20% |
| great | 15% |

So 60% of the time, a word other than "lightweight" comes next, and the rest of the description follows from it.

Temperature is a setting that controls how often the less likely tokens get picked. Here's the next token from five runs at two temperatures:

```plain-text
run   temperature 0   temperature 1
1     lightweight     lightweight
2     lightweight     perfect
3     lightweight     great
4     lightweight     lightweight
5     lightweight     ideal
```

At temperature 0, every run picked "lightweight". At temperature 1, the other words were picked too.

---
## Practice

You run one product-description request twice and get two quite different descriptions. Why?

???

- Each token is a weighted random draw, and later words build on it.

---
## Revision

Raising the temperature gives less likely tokens a ??? chance of being drawn.

- bigger
- smaller
- zero
