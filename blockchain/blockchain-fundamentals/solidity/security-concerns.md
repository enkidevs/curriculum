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

# Security Concerns


---

## Content

Unfixable bugs are the worst bugs. Normally, you would be able to patch an application if something came up: on the blockchain you can not. As such, security is a big concern when talking about deploying a smart contract.

Luckily, people working in this field recognize the need to over-share best practices: *Zeppelin* released an open-source set of secured, audited and tested contracts from which your own can inherit[1]. While there is probably no need to dive into them if you are starting with Solidity on Remix, it would be useful remembering the repository.

Smart contracts have their own address, from which they can be accessed. Normally, everyone could access them. However, smart contracts have a way to track the message sender (`msg.sender`) and ignore anyone other than the owner for certain administrative functions, like contract disabling.

Moreover, in order for consensus to be reached about blocks, the data in them has to be deterministic (no `random`). Otherwise, every node would obtain a different identifier for the smart contract. Consequently, smart contract by themselves are locked to only accessing data from the blockchain itself and transactions in previous blocks.

But this does not mean smart contracts can not eventually access say the temperature in London on the 3rd of July 2018. Ethereum has this concept of *oracles*: smart contracts maintained by trusted third-party APIs who return, given the same parameters, the same data. For this to happen, a request is made to the Oracle, the Oracle calls a `storeData` function on its smart contract with a question key and the result and stores the mapping on the blockchain.


---

## Footnotes

[1: OpenZepellin repository]
Here is the [OpenZepellin repository](https://github.com/OpenZeppelin/openzeppelin-solidity).

---

## Practice

What is the name of an entity that links the outside world to the blockchain?

???

- Oracle
- API gate
- Informatix
- Developer


---

## Revision

Identify the entity responsible for the security of a smart contract:

???

- The developer
- The blockchain maintainer
- The user
- No one, smart contracts are inherently secure
