---
author: nemanjaenki
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# 🧠 Final Layer

---

## Content

The final layer outputs a prediction for the last word, summarizing all learned context to predict the next word.

The LLM suggests a list of possible words, ordered by their probability of being the next word.

For example, in `"John wants his bank to cash the"` the model would most likely suggest `"check"` as the most probable next word, because earlier layers clarified `"bank"` and tracked John's goal.

![LLMs final layer prediction](https://img.enkipro.com/57421bd8cdbb2b6093c57a7d79a25ce1.png)

> 💡 Keep in mind that the model can only predict based on the text it was trained on. This is why LLMs get better as they are trained on more data.

---

## Practice

The most ??? word based on the context from previous layers is selected as the next word in the final layer.

- probable
- common

---

## Revision

The goal of the final layer is to ???

- predict the next word
- store all previous words
- process the input text
- hide internal calculations
