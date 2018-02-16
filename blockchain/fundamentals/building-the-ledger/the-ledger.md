# The Ledger
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

The ledger, or better said "the distributed ledger", is a blockchain's *log of transactions*. As with any other ledger, the object of the transaction must be **uniquely identifiable**, under one form or another.

Unlike physical ledgers, if a transaction ever took place, there is no way of hiding it. Once happened and confirmed, the details of the transaction will be available to anyone connected to the network.

The blockchain is built to be **append-only**. If any other type of update operation is to take place (removal or modification), it usually means that the blockchain's security and integrity are compromised.

Most blockchains are built around cryptocoins. The older ones especially, because they were aiming at replacing the banking system. A transaction can then be represented as:
```
Alice gives Bob 20 (bit/lite/doge)COINS
```
Assuming Alice has those 20 coins to begin with, the transaction is validated and packed into a block, which is then appended to the blockchain. As you can see, no absolute value is stored. This doesn't mean that Alice isn't aware of her balance: the total value is computed by adding every transaction amount having Alice as the sender or the recipient. 

### Why are most ledgers built around coins?

Digital coins are easier to track. We cannot necessarily link one coin to an actual person, but we can track their movement. Digital coins (similar to any other currency) are commonly accepted as a mean to evaluate services, items, shares, etc. and it is in the blockchain developer interest to also release a token.

[Image here - trade circle where X wants A from Y, Y wants B from Z and Z wants C from X]

Having a coin-behaving asset also incentivizes more people to join the network: the bigger the network, the less likely an external harmful agent can succeed. By also rewarding the miners for each valid, confirmed block, it prevents it from going bad. If the blockchain loses credibility, the stolen goods also depreciate.

As more people join the network, hopefully honest agents, the more secure the network becomes. The more secure the network is, the bigger the trust people place in the network. If people trust the network, they are more likely to join and invest in the network's assets (coins). If the demand is high, the value automatically rises.

This way, blockchains are able to self-sustain solely based on the adoption rate. But if everything is so clean and simple, you may wonder why the first blockchain hadn't been released earlier than 2009. Well, there was a specific exploit that was easy to solve in a centralized environment but difficult to overcome otherwise: the double-spending problem.

---
## Practice

Identify a valid blockchain operation from the list below:

???

* Append data
* Modify data
* Remove data
* Update data

---
## Revision

In the context of coin-based blockchains, the ledger is

???

* transaction-based
* account-based
* property-based
* storage-based

