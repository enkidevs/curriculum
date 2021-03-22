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
---

# Transaction Verification and the Double-Spending Problem


---

## Content

First and foremost, the blockchain must verify if the coin sender has enough coins to complete the transactions: this is done by going through all previous transactions. If Alice has enough coins, the first part of the verification process is done.

Now, the network has to be sure that Alice doesn't try spend the same coins that were supposed to get to Bob on another transaction to someone else. This is known as the double-spending problem.

In a centralized environment, i.e. bank, there is a single source of truth: the main database. If you ever check your balance on internet banking, you will most likely see two values - the total balance and the available balance. The available balance is the total balance minus any holds that haven't cleared the account yet.

By keeping track of a second balance, the bank knows for sure you won't be able to spend the same $10 you had used to buy groceries on coffee the next day.

In a decentralized environment, it takes a while for transaction confirmations to move between nodes. Consider this scenario: Alice is living in the UK and buys something for 10 tokens from Bob. The transaction is valid by itself and is broadcasted from the UK:

```plain-text
Alice pays Bob 10 coins
```

Because it takes a while for the transaction to be added to a block and then to reach the nodes in Australia, Alice could also broadcast another transaction from a server in Australia that said:

```plain-text
Alice pays Alice1 10 coins
```

By the nature of blockchain, if Alice had only 10 coins and both transactions were to be processed at the same time, one would go through and the other would be dropped. If Bob was to confirm the payment before the network actually did it, the transaction dropped could be the one sending him the coins.

This is usually dealt with by waiting for a number of new blocks (5-6) to be appended after the block containing the said transaction to "confirm" it. The longer the new chain, the more trustworthy it is considered to be.


---

## Practice

Which are the first and second verifications at the transaction level?

???

???

- Check for funds
- Check for double-spend
- Check block references
- Check UTXOs
