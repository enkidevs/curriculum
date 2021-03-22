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

# Mining


---

## Content

**Mining** is part of the process of securing the network. Miners race one another in solving a computationally-difficult, cryptographic puzzle that would entitle them to a reward. We can only talk about *mining* in the context of proof-of-work consensus protocols.

Bitcoin is a blockchain that implements such a consensus algorithm. Miners race to find the right **nonce** that would make the double SHA-256 hash start with a fixed number or more of `0`s. The number of 0s is called the *mining difficulty*.

They are incentivized to do this through a block reward - the first miner to propose a valid block receives some coins. To make sure a block is valid, the miners have to check the transactions they include. By doing so, they systematically protect the network.

There is also the concept of *side branches*. Side branches occur when two or more nodes find a block approximately at the same time. If some of the transactions are shared, a single branch will be merged into the main chain while the others are ignored.

Nodes are coded to prefer the longest chains, the ones that required the most computation power to create. In a sense, the lottery is not only about finding the right nonce, but also convincing other miners to work on top of your block.


---

## Practice

Choose from the following list the case in which successful mining doesn't yield any reward:

???

- There is a longer branch being built on.
- Double-spend attack.
- Successfully mining blocks always yields rewards.
- The nonce is 0.


---

## Revision

What effect does mining have on the structure of the blockchain?

???

- The blockchain grows.
- The miner receives a block reward.
- The mined block contains the block reward transaction.
- The last block is skipped.
