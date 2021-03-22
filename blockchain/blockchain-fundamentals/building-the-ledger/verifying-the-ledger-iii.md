---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Full list of block
    checks](https://en.bitcoin.it/wiki/Protocol_rules#.22block.22_messages){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Block Verification


---

## Content

This verification ensures that everybody has exactly the same history: the hash of the previous block must be correct and match the end of the longest current chain. Ideally, the lookup should be done up to the genesis block. However, this isn't scalable.

In most cases, the network designates a checkpoint block, that is used as a definite source of truth.


---

## Practice

What does the Block verification ensure?

???

- That everybody has exactly the same history: the hash of the previous block must be correct and match the end of the longest current chain.
- That the history cannot be the same for anyone and that the previous block cannot match the longest chain


---

## Revision

What is the problem solved by verifying all previous transactions?

???

- Double-spending
- Identity tracing
- Bottlenecking
- Theft
