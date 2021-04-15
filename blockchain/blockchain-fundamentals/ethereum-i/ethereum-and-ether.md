---
author: mihaiberq
type: normal
category: must-know
links:
  - '[Ethereum](https://www.ethereum.org/){website}'
  - '[Ethereum source code](https://github.com/ethereum/go-ethereum){website}'
  - >-
    [Guide to Casper
    Protocol](https://blockgeeks.com/guides/ethereum-casper/){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Ethereum and Ether


---

## Content

**Ethereum** is the blockchain that changed how the game is played. Before its creation, most cryptocurrencies were the cryptographic equivalent of fiat currencies. Once it was launched, cryptocurrencies started to represent something more: a token through which people could interact with a given platform.

Ethereum is a distributed supercomputer. Its main feature is the ability to store and run applications. It was created by *Vitalik Buterin*, back then only 21 years old. The code is open-source and can be found on GitHub.

Applications are run using blockchain's quasi Turing complete virtual machine: Ethereum Virtual Machine or EVM. Every node in the network will therefore run the code you deploy on the blockchain. How do you make sure people don't run malicious code or infinite loops?

Enter **ether**, Ethereum's token: make people pay for the time and memory used by the network to run their code or transfers. So if someone is trying to do something malicious, their transaction would be dropped but their transaction fee retained.

A transaction is paid for in *gas*, that can be bought using ether subdenominations. Usually, gas price is expressed in gweis (giga weis, 10^9 wei), where 1 ether is equal to 10^18 weis. Transaction fees then become the product of the gas price and the amount of gas used.

Until recently, Ethereum used *Ethash*, a memory-heavy PoW algorithm, to create blocks. Average block time is 14 seconds, compared to Bitcoin's 10 minute block time. Because PoW can end up consuming more electricity than some countries (see Bitcoin and its ever growing thirst), Ethereum developers are trying to migrate to a PoS algorithm, called `Casper Protocol`. Until that is possible, a hybrid PoW/PoS algorithm is going to be implemented: every 49 regular blocks would still be generated using the PoW algorithm, while nodes would stake to append a special 50th block, called checkpoint block.


---

## Practice

What is the main purpose of the Ethereum Virtual Machine?

???

- To run applications
- To track digital coins ownership
- To speed up digital transactions
- To create and breed cryptokitties


---

## Revision

What is the biggest expected change in the Ethereum blockchain protocol, that will affect how rewards are distributed?

???

- Swapping PoW with PoS
- Removing the periodical block reward reduction
- Further reducing the block time
- Removing the gas cost of running DApps
