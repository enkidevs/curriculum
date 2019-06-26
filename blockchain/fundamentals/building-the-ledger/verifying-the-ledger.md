---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  blockchain.analyze-blockchain-components.0: 10
  blockchain.analyze-blockchain-components.1: 10
  blockchain.identify-blockchain-applications.0: 10
  blockchain.identify-blockchain-applications.1: 10
  blockchain.identify-blockchain-applications.2: 10
  blockchain.analyze-network-security-policy.0: 20
  blockchain.analyze-network-security-policy.8: 10

aspects:

  - introduction

  - workout

links:
  - '[Full list of block checks](https://en.bitcoin.it/wiki/Protocol_rules#.22block.22_messages)'

---
# Verifying the Ledger

---
## Content

For the sake of simplicity, we'll tackle the main steps of the verification process of Bitcoin ledger. For more complex operations, such as working with multi-signature accounts, storing records or running code, the verification process will require more variables to be considered.
             	
To append a new block to a transaction-based blockchain, there are verifications conducted on two levels:   	
- Transaction level verifications
  - Check if there are enough funds to complete the transaction
  - Check for double-spend
- Block level verification
  - Check block references
             	
### Transaction verification and the double-spending problem
             	
First and foremost, the blockchain must verify if the coin sender has enough coins to complete the transactions: this is done by going through all previous transactions. If Alice has enough coins, the first part of the verification process is done.
   	          
Now, the network has to be sure that Alice doesn't try spend the same coins that were supposed to get to Bob on another transaction to someone else. This is known as the double-spending problem.
             	
In a centralized environment, i.e. bank, there is a single source of truth: the main database. If you ever check your balance on internet banking, you will most likely see two values - the total balance and the available balance. The available balance is the total balance minus any holds that haven't cleared the account yet.
             	
By keeping track of a second balance, the bank knows for sure you won't be able to spend the same $10 you had used to buy groceries on coffee the next day.
             	
In a decentralized environment, it takes a while for transaction confirmations to move between nodes. Consider this scenario: Alice is living in the UK and buys something for 10 tokens from Bob. The transaction is valid by itself and is broadcasted from the UK:
      	       
```bash
Alice pays Bob 10 coins
```
             	
Because it takes a while for the transaction to be added to a block and then to reach the nodes in Australia, Alice could also broadcast another transaction from a server in Australia that said:
             	
```bash
Alice pays Alice1 10 coins
```
             	
By the nature of blockchain, if Alice had only 10 coins and both transactions were to be processed at the same time, one would go through and the other would be dropped. If Bob was to confirm the payment before the network actually did it, the transaction dropped could be the one sending him the coins.
             	
This is usually dealt with by waiting for a number of new blocks (5-6) to be appended after the block containing the said transaction to "confirm" it. The longer the new chain, the more trustworthy it is considered to be.
             	
### Block verification
             	
This verification ensures that everybody has exactly the same history: the hash of the previous block must be correct and match the end of the longest current chain. Ideally, the lookup should be done up to the genesis block. However, this isn't scalable.
             	
In most cases, the network designates a checkpoint block, that is used as a definite source of truth.

---
## Practice

Which are the first and second verifications at the transaction level?

???

???
             	
* Check for funds
* Check for double-spend
* Check block references
* Check UTXOs

---
## Revision

What is the problem solved by verifying all previous transactions?
             	
???
             	
* Double-spending
* Identity tracing
* Bottlenecking
* Theft
