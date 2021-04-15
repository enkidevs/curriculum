---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Does Ethereum Do Differently?


---

## Content

Other than being distributed and having a PoW algorithm initially, Ethereum does pretty much everything else *differently* than Bitcoin.

### Account

Ethereum is using an **account model** aka balance model. You are probably familiar with the centralized version of this since it's employed by banks. The problem with a decentralized account model is its vulnerability to *replay attacks*: if you broadcast a signed transaction in which you pay Bob 0.5 ETH, Bob could re-broadcast the exact same transaction (being signed and everything) multiple times to drain all your funds. To prevent these attacks, Ethereum accounts attach a *sequence number* (nonce) to transactions. After a nonce has been redeemed once, every other transaction that has a nonce less or equal that the last value redeemed is dropped.

### Transactions

Ethereum accepts more than transfer transactions. Given its capability of running code, Ethereum has special transactions used to interact with smart contracts: creation, callin and state querying.

Regardless of transaction type, 4 variables are required:

- Gas price: higher gas price means a higher transaction fee and makes nodes more likely of including the transaction in the next block
- Gas limit: depending on the resources used by the smart contract, the amount of gas used is determined; if the gas limit is exceeded (transaction costs more than you wanted to pay), the transaction is dropped but the transaction fee is not returned
- Nonce: transaction sequence number
- From: transaction signatory
      	


---

## Practice

Fill in the gaps such that the next sentence makes sense:

```plain-text
Bitcoin blockchain functionality is
limited to ???
while Ethereum blockchain can also
??? 
```

- tracking a digital currency
- run and store applications
- solve world hunger
- ASICs for solving PoW
- use GPUs
