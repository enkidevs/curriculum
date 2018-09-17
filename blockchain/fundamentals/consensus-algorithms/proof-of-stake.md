---
author: mihaiberq

levels:

  - basic

  - medium

type: normal

category: must-know

standards:
  blockchain.analyze-network-security-policy.0: 10
  blockchain.analyze-network-security-policy.5: 20
  blockchain.analyze-network-security-policy.6: 20
  blockchain.analyze-network-security-policy.7: 10
  blockchain.analyze-network-security-policy.8: 10

aspects:

  - introduction

  - deep

---
# Proof of Stake (PoS)

---
## Content

**Proof of stake** is the new, cool kid on the block. The hard-hats miners are gone and have been replaced by **minters**. Minters stake, or freeze, some of their coins to have a chance of being selected to propose a new block that points to one of the previous blocks. The probablity of being selected is proportionate to their share in the total stake pool: 3 staked coins in a pool of 100 coins means a 3% chance of being selected to propose the next block.

The main advantage of PoS is that the verification can be done with *no performance hit* on an average PC. Moreover, by having to purchase coins instead of mining hardware to stake, the investment stays within the blockchain. In theory, acquiring 51% of the total stake pool is a lot easier to achieve than having 51% of the procesing power in a PoW blockchain. Even then, one is not incentivized to attack the blockchain because they risk losing their investment altogether because of the coin depreciation.

The downside is a particular node stance called _nothing at stake_. In chain-based proof of stake (more on this later), unless there is a penalty in place for voting for both branches in a potential fork, no consensus might be reached. The nodes do not even have to be malicious: voting on both branches to avoid losing the stake by bidding on the wrong one is acceptable from a self-centered, economical point of view.
```text
    C   D
    |   |
     \ /
      B
      |
      A
```
A validator can easily propose a new block to follow C and a new block to follow D because, compared to PoW, proposing the block has practically inexistent computational cost.

---
## Practice

What is the main difference between PoW and PoS?

???

* No mining hardware needed
* No verification needed
* Miners verify
* Miners are called stakeholders

---
## Revision

Identify the weighting factor for choosing validators in a PoS environment:

???

* The amount of coins one has.
* The computing power one has.
* The time since one's last transaction.
* One's time spent mining.

