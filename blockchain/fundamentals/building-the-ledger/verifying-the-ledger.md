# Verifying the Ledger
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

tags:

  - introduction

  - workout

---
## Content

When adding new blocks to the blockchain, there are two main verifications that go on:
- Transaction level verification
  - Checking if there are enough founds to complete the transaction
  - Check for double-spend
- Block level verification
  - The block references the previous block

### Transaction verification and the double-spending problem

First and foremost, the blockchain must verify if the coin sender has enough coins to complete the transactions: this is done by going through all previous transactions. If Alice has enough coins, the first part of the verification process is done.

Now, the network has to be sure that Alice doesn't try spend the same coins that were supposed to get to Bob on another transaction to someone else. This is known as the double-spending problem.

In a centralized environment, 

double spending problem



### Block verification


---
## Practice

Given the image above, identify the block that is checked when verifying block 4?

???

* Block 2
* Block 1
* Block 3
* Block 4

---
## Revision

What is the problem solved by verifying each transaction? 

???

* Double-spending
* Identity tracing
* Bottlenecking
* Theft

