---
author: mihaiberq
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

# Delegated Proof of Stake (DPoS)


---

## Content

Similar to how the election system works in a democracy, **delegated proof of stake** implies nodes voting delegates to validate blocks for them. At any time, there are a limited number of validators, usually under 100.

Validators are picked at random to push their block. The small number of delegates allows efficient distribution of block proposing tasks and validation. But validators are not in for life: if they miss the target repeatedly or propose invalid transaction, they are replaced using the same voting system.

Having nodes collaborate rather than compete for publishing blocks (specific to PoW, PoS), the block publishing times can get as low as 1 second. The trade-off is the relative centralization that occurs by having a few validators. Steemit and EOS are some examples of blockchain with high throughput that implement DPoS.


---

## Practice

Why is DPoS more centralized than PoS?

???

- Only a limited number of nodes can propose blocks
- Only nodes with more tokens than average can propose blocks
- On the contrary, PoS is more centralized
- Because it is faster


---

## Revision

What do most nodes in a DPoS environment vote for?

???

When does a new vote happen?

???

- Block validators
- When validators can't keep up the pace
- Blocks
- Every 2 hours
- The price of the coin in USD
- When the price of the coin drops by more than 15%
