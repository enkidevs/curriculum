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

For the sake of simplicity, we'll tackle the verification process on a transaction-based blockchain (similar to Bitcoin). For more complex blockchains, such as those that can process multi-signature accounts, store records or run code, the verification process will require more variables to be considered.

To append a new block to a transaction-based blockchain, there are verifications conducted on two levels:
- Transaction level verifications
  - Checking if there are enough founds to complete the transaction
  - Check for double-spend
- Block level verification
  - The block references the previous block in the node's copy of the chain

### Transaction verification and the double-spending problem

First and foremost, the blockchain must verify if the coin sender has enough coins to complete the transactions: this is done by going through all previous transactions. If Alice has enough coins, the first part of the verification process is done.

Now, the network has to be sure that Alice doesn't try spend the same coins that were supposed to get to Bob on another transaction to someone else. This is known as the double-spending problem.

In a centralized environment, i.e. bank, there is a single source of truth: the main database. If you would ever check your balance using internet banking, you will most likely see two values - the total balance and the available balance. The available balance is the total balance minus any holds that haven't cleared the account yet.

By keeping track of a second balance, the bank knows for sure you won't be able to spend the same $10 you had used to buy groceries on coffee the next day.

In an decentralized environment, it takes a while for transaction confirmations to move between nodes. Consider this scenario: Alice is living in the UK and buys something for 10 tokens from Bob. The transaction is valid by itself and is brodcasted from the UK:
```
Alice has a balance of 10 coins
Alice pays Bob 10 coins
```
Because it takes a while for the transaction to reach the nodes in Australia, Alice could also brodcast another transaction from a server in Australia that said:
```
Alice has a balance of 10 coins
Alice pays Alice1 10 coins
``` 
By the nature of blockchain, if both transactions were to be processed at the same time, one would go through and the other would be dropped. If Bob was to confirm the payment before the network actually did it, the transaction dropped could be the one sending him the 10 coins.

This is usually dealt with requiring a number of new blocks (5-6) being appended after the block containing the said transaction. The longer the new chain, the more trust-worthy it is consider to be.


### Block verification

This verification ensures that everybody has exactly the same history: the hash of the previous block must be correct and match the end of the currenly longest chain. Ideally, the lookup should be done up to the genesis block. However, this isn't scalable.

In most cases, the network designates a checkpoint block, that is used as a definite source of truth. 

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

What is the problem solved by verifying all previous transactions? 

???

* Double-spending
* Identity tracing
* Bottlenecking
* Theft

