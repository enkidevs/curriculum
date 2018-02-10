# What Is a Blockchain?
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

A **blockchain** (literal chain of blocks) is a network that builds a sequence of information bundles, verified by trust-worthy nodes and available to every node in the network. 
Conceptually, every blockchain should be using cryptography to establish and maintain properties like decentralization, data integrity and anonymity. 

The first blockchain drafts began appearing in the 90's, when multiple different projects were aiming to creat fully digitized, decentralized and securitized payment systems[1].

But the blockchain is not limited to just digital cash like Bitcoin or payment systems. While they are all valid applications that may at some point remove the need for intermediaries in currency transactions (and hence overhead costs for processing, security and storing data), there is no reason to stop just there.

A (public) blockchain is built in such a way that everyone can join. All one has to do is download the blockchain client and run it. Participants share and verify the same information to prevent tampering with the data, while the *cryptographic* mechanisms on which the network is built ensure that no one can steal[2] your identity on the network. 

Estonia has seen the potential in blockchain techonology and set a goal of managing its registers, such as national health, judicial, security and commercial code systems by using the blockchain. The system has been live since 2012 and their initiative is only moving forward.

[Image here of a blockchain]

### The components of a blockchain

As stated before, a blockchain is a type of network that follows a special **protocol**. Like in any other network, **nodes** are required to acknowledge, verify or append information. This time, however, information is not converging towards a single source of truth (e.g. central database), but is exchanged between nodes. This property is called **decentralization**. 

After a certain period of time (dependant on internet speed and latency) and a number of (usually 7) thumbs-up given by nodes, the set of data (**block**) is confirmed as part of the blockchain.

A distinction can also be made between nodes: there are **full nodes** and **mining nodes**. In short, mining nodes, or simply *miners*, are the ones that bundle the data *available* (this is a big, maybe global, network and transactions happen every second) to them into a new block and make sure to also include a reference to the last block in the chain. Full nodes are the ones that receive the bundled blocks from miners and verify its *integrity*. If everything is in order, then they append the block to their copy of the blockchain and send the message forward.

To prevent nodes for attacking the network, they *are rewarded* whenever they find a valid block - but more on this later. 

At a quick glance, the components of the blockchain are as follows:
- `Protocol`: The set of rules on which the network runs
- `Full Node`: A node that validates transactions and blocks
- `Miner`: A node that gathers transactions and bundles them up in a block
- `Block`: A set of transactions available to the miner at some point in time
- `User`: The human component behind other participants in the network

---
## Footnotes

[1: Projects old as time]
Nick Szabo's `bit gold` is the one most similar to Satoshi Nakamoto's Bitcoin, but just in theory. It had never come to see the light of day.

`DigiCash` was also a company trying to create a fully digital currency. Founded by David Chaum in 1990, it filed for bankruptcy in late 90's.

[2: Blockchain identity theft]
While computing the private key that determines your identity is infeasible for an attacker, having the key stolen as is, either physically or digitally, is still a threat.

---
## Practice

Identify the item that `is not` part of a blockchain: 

???

* Database
* Set of transactions
* Miner
* Cryptography
* Reward

---
## Revision

A blockchain is a ??? network.

* decentralized
* centralized

---
## Quiz

headline: What does the following definition refer to?

question: Can you identify what concept can be defined by the `sequence of data bundles` syntagm?

answers:
  - Blockchain
  - Inheritance
  - Deposition
  - Block

