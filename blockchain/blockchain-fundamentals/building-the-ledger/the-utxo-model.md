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

# The UTXO Model


---

## Content

The more scalable way of tracking account balances on the blockchain is the **UTXO** model. To send coins from one account to another, the sender must have an *unspent transaction output* received previously.

Any transaction requires an UTXO as input and outputs another UTXO. The only transaction that doesn't require an UTXO as input is the block reward transaction: the network creates the bitcoins and outputs an unspent transaction that grants the miner a number of bitcoins.

One important aspect of UTXO model is that every unspent output must be fully consumed in case even the smallest amount of bitcoins is accessed. Consider the following example:

```plain-text
# Block 1
The network gives Alice 50 bitcoins
# Block 2
Alice gives Bob 10 bitcoins
Alice gives Alice 40 bitcoins
```

Alice now has an UTXO that has a value of 40 bitcoins and Bob has an UTXO of 10 bitcoins. The transaction of sending bitcoin to yourself in order to fully consume an UTXO is called **change address**.

Because UTXOs are used in their entirety, verification process can ignore those that have already been used as input in other transactions. This is why UTXO model is considered to be more scalable than the account model.


---

## Practice

What does UTXO stand for?

???

- Unspent transaction output
- Unspent trade output
- Unspent transaction offer
- Useful transaction set


---

## Revision

What is a change address transaction?

???

- A transaction fully consuming an UTXO
- A transaction send to someone else
- A transaction between account of the same person
