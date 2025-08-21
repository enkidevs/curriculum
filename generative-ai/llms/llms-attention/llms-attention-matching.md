---
author: nemanjaenki
type: normal
category: must-know
---

# 👀 Attention Matching

---

## Content

When an LLM finds good matches between words, the words share information with each other.

This happens for every word at the same time. 

After all words have shared information with their friends, the LLM uses this to help predict what word should come next.

An LLM like GPT-3 performs thousands of attention operations for each prediction.

```
96 layers × 96 attention heads = 9,216 operations per word.
```

This helps it understand and predict words correctly, even in complex text.
