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

# What Are Forks?


---

## Content

On the blockchain, the majority dictates the current state of the chain. In theory, a blockchain is immutable. In practice, the immutability follows some constraints (more than 50% of nodes are honest). As such, if the network agrees, the state can be modified. The process is called **forking**. There are two types of forks: *hard forks* and *soft forks*.

A **hard fork** is a permanent divergence from a previous state of the blockchain. They usually occur in case of force majeure events, like reversing transactions, changing the consensus algorithm or enforcing new rules. Nodes also require an updated version of the blockchain client software that accounts for the changes to be able to follow the fork. A successful hard fork implies the majority of nodes upgrading and following the new path.

A **soft fork** is a less drastic divergence: it usually happens to yield past transactions invalid or simply freeze wallets. The nodes that agree to the fork check the new transactions against the new conditions. A soft fork is backwards compatible - as long as more than 50% of nodes update, the blocks that are valid for those will also be valid for the rest of the network. However, the nodes that haven't upgraded might still propose invalid blocks.


---

## Practice

What is a soft fork?

???

What is a hard fork?

???

- Ignoring a state/block in the future
- Modifying states that are considered to be immutable
- Redistributing the balance of one account to others


---

## Revision

Determine the truth value of the following sentence: A blockchain is immutable under any circumstances.

???

What is one case in which the ledger can be modified?

???

- False
- The network initiates a hard-fork
- True
- The network initiates a soft-fork
- There is no such case
