---
author: mihaiberq

levels:
  - basic

  - medium

type: normal

category: must-know

tags:
  - introduction

  - deep

links:
  - >- [Ethereum](https://www.ethereum.org/){website}
  - >- [Ethereum source code](https://github.com/ethereum/go-ethereum){website}
---

# Ethereum and Ether

---

## Content

**Ethereum** is the blockchain that changed how the game is played. Before its creation, most cryptocurrencies were the cryptographic equivalent of fiat currencies. Once it was launched, cryptocurrencies started to represent something: a token through which people could interact with a given platform.

Ethereum is a distributed supercomputer. Its main feature is the ability to store and run applications. It was created by _Vitalik Buterin_, back then only 21 years old. The code is open-source and can be found on GitHub.

Applications are run using blockchain's turing complete virtual machine: Ethereum Virtual Machine or EVM. Every node in the network will therefore run the code you deploy on the blockchain. How do you make sure people don't run malicious code or infinite loops?

Enter **ether**, Ethereum's token: make people pay for the time and memory used by the network to run their code or transfers. Usually, transaction fees are represented in gweis, or giga weis (10^9 wei). 1 ether is 10^18 wei.

Until recently, Ethereum used _Ethash_, a memory-heavy PoW algorithm, to create blocks. Average block time is 15 seconds, compared to Bitcoin's 10 minute block time. Because PoW can end up consuming more electricity than some countries (see Bitcoin and its evergrowing thirst), Ethereum developers are trying to migrate to a PoS algorithm, called `Casper Protocol`. Until that is possible, a hybrid PoW/PoS algorithm is going to be implemented: blocks would still be generated using PoW with a checkpoint every 50th block appended by PoS.

---

## Practice

What is the main purpose of the Ethereum Virtual Machine?

???

* To run applications
* To track digital coins ownership
* To speed up digital transactions
* To create and breed cryptokitties

---

## Revision

What is the biggest expected change in the Ethereum blockchain protocol, that will effect how rewards are distributed?

???

* Swapping PoW with PoS
* Removing the preriodical block reward reduction
* Further reducing the block time
* Removing the gas cost of running DApps
