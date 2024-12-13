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

# 🧠 Feed-Forward: Word Isolation

---

## Content

After attention, the feed-forward step processes each word individually without exchanging information between words.

For example:

Take the word `"cake"` in `"The chef baked a cake."` The feed-forward layer works on this word alone.

But it's not starting from scratch - it already knows `"baked"` suggests food, thanks to the prior attention steps.

> 💡 The feed-forward layer processes only the current word vector, while contextual information has already been added by attention heads.

---

## Practice

The feed-forward layer only needs to look at one word at a time, since that word already knows about the other words around it.

???

- True
- False

---

## Revision

The feed-forward layer only needs access to the current word vector because that vector already contains contextual information from all other words.

- True
- False
