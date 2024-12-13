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

# 🧠 Layer Size

---

## Content

LLMs have many hidden layers and output vectors of substantial size.

For example, GPT-3 has 96 layers and uses word vectors with 12,288 dimensions.

These dimensions act as "scratch space", allowing the model to encode nuanced details.

Imagine GPT-3 is processing a story and storing details such as:

```
Dragon = "main character, purple scales, loves collecting gold coins, has hiccups."

Knight = "Dragon's neighbor, shiny armor, retired hero, bringing cough medicine."

The problem = "accidentally sneezed fire on the village's cookie supply, causing cookie shortage."
```

Details are spread across these dimensions, enabling deep contextual understanding.

---

## Practice

GPT-3 has ??? layers and uses word vectors with ??? dimensions.

???

- 96
- 12,288
- 128
- 96,000

---

## Revision

The more layers the model has and the more dimensions the word vectors have, the more nuanced context the model can store.

???

- true
- false