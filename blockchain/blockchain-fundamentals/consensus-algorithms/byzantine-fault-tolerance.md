---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [The research paper in which the Byzantine Generals Problem was first
    discussed](https://people.eecs.berkeley.edu/~luca/cs174/byzantine.pdf){article}
  - >-
    [Byzantine fault
    tolerance](https://medium.com/loom-network/understanding-blockchain-fundamentals-part-1-byzantine-fault-tolerance-245f46fe8419){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Byzantine Fault Tolerance (BFT)


---

## Content

A problem specific to distributed systems is the **Byzantine Generals Problem**. The problem states that a reliable computer system must handle malfunctioning components that give conflicting information to different parts of the system.

The problem is presented as follows: 
A group of Byzantine generals and their divisions camped around a city. They can only communicate by messengers to come up and agree on a battle plan. To save the city, insurgents infiltrate the army and try to confuse the generals by posing as messengers. Moreover, some of the generals themselves may be traitors. In case the messages are oral (easily forged), the problem has been proven solvable if and only if *more* than two-thirds of the generals are loyal (1 general can confound 2 others). If the messages are unforgeable, the problem is solvable for any number of generals.

**Byzantine fault tolerance** characterizes a system that tolerates the class of failures that may occur in the context of BGP. The members of this class are considered to be the most severe and difficult to deal with. All consensus algorithms mentioned previously are solutions to this problem.

Another solution is called **Federated Byzantine Agreement** (FBA). Stellar and Ripple are blockchain that implement this protocol. The main idea is that generals (pre-selected nodes) are responsible for their own chains and focus on sorting messages to establish the single source of truth.

Ripple foundation select the validators themselves, while Stellar allows nodes to choose the validators to trust. So far, FBA is one of the fastest and most reliable classes of consensus algorithms.


---

## Practice

In general, which solution to the Byzantine Generals Problem is the fastest (first answer) and which is the slowest (second answer)?

???

???

- Federative byzantine agreement
- Proof of work
- Proof of stake
- Delegated proof of stake
- Byzantine fault tolerance


---

## Revision

What is the problem that most consensus algorithm are trying to solve?

???

- The Byzantine generals problem
- The Byzantine fault tolerance Problem
- The blockchain problem
- Centralization problem
