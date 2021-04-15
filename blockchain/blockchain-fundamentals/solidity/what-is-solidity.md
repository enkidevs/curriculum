---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Solidity By
    Example](https://solidity.readthedocs.io/en/develop/solidity-by-example.html){website}
  - '[What is Solidity?](https://blockgeeks.com/guides/solidity/){article}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is Solidity?


---

## Content

**Solidity** is a programming language that can be compiled into bytecode and run by the EVM. But the relationship between Solidity and EVM is not one-to-one. Solidity is a contract-oriented language that can work on multiple platforms. Moreover, it is part of the set of languages in which Ethereum smart contracts can be developed.

It is a relatively new language, which was officially released early-mid 2015. It was created by some of the developers on the Ethereum core team.

The main features Solidity had over other Ethereum supported languages were static typing, mappings, structs, (multiple) contract inheritance, and type-safe functions.

While it is not particularly difficult to start writing Solidity code, the real milestone is actually understanding and following security best practices. Remember that once the smart contract is up there, there is no way to change it, although there is a kill switch. Over the years, multiple exploits in smart contracts allowed bad things to happen, one heist amounting over $50 millions worth of ether. Moreover, developers, to prove their honesty and prevent some exploits, are required to pay a gas fee (for things like storage) when publishing their contracts.


---

## Practice

What does solidity run on?

???

- EVM
- Blockchain
- Any computer
- Ethereum blockchain


---

## Revision

Why does one pay gas to publish a smart contract on the blockchain?

???

- To prove their honesty
- To support the Ethereum foundation
- To tip the nodes that run the code
- To speed up the verification process
