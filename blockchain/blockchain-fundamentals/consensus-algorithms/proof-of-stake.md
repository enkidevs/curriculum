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

# Proof of Stake (PoS)


---

## Content

**Proof of stake** is the new, cool kid on the block. The hard-hats miners are gone and have been replaced by **minters**. Minters stake, or freeze, some of their coins to have a chance of being selected to propose a new block that points to one of the previous blocks. The probability of being selected is proportionate to their share in the total stake pool: 3 staked coins in a pool of 100 coins means a 3% chance of being selected to propose the next block.

The main advantage of PoS is that the verification can be done with *no performance hit* on an average PC. Moreover, by having to purchase coins instead of mining hardware to stake, the investment stays within the blockchain. In theory, acquiring 51% of the total stake pool is a lot easier to achieve than having 51% of the processing power in a PoW blockchain. Even then, one is not incentivized to attack the blockchain because they risk losing their investment altogether due to coin depreciation.

The downside is a particular node stance called *nothing at stake*. In chain-based proof of stake, unless there is a penalty in place for voting for both branches in a potential fork, no consensus might be reached. The nodes do not even have to be malicious: voting on both branches to avoid losing the stake by bidding on the wrong one is acceptable from a self-centered, economical point of view.

```plain-text
 C   D
 |   |
 	\ /
   B
   |
   A
```

A validator can easily propose a new block to follow C and a new block to follow D because, compared to PoW, proposing the block has practically nonexistent computational cost.


---

## Practice

What is the main difference between PoW (Proof of Work) and PoS (Proof of Stake)?

???

- No mining hardware needed
- No verification needed
- Miners verify
- Miners are called stakeholders


---

## Revision

Identify the weighting factor for choosing validators in a PoS (Proof of Stake) environment:

???

- The amount of coins one has.
- The computing power one has.
- The time since one's last transaction.
- One's time spent mining.
