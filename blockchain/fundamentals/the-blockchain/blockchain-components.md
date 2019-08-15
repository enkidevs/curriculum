---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  blockchain.analyze-blockchain-components.4: 40

aspects:

  - introduction

  - workout

---
# Blockchain Components

---
## Content

A blockchain is a type of network. Just like any other network, it has to follow a **protocol**. **Nodes** are required to acknowledge, verify and append information. This time, however, information is not converging towards a single source of truth (e.g. central database), but is broadcasted between nodes. This is called **decentralization**.

After a certain period of time (dependant on internet speed and latency), and a number of confirmations from other verifying nodes, the set of data (**block**) is confirmed as part of the blockchain.

A distinction can also be made between nodes: there are **full nodes** and **mining nodes**. In short, mining nodes, or simply *miners*, are the ones that verify and bundle the valid, available[1] transactions into a new block. They also make sure to include a reference to the previous block in the chain. Full nodes are the ones that receive the bundled blocks from miners and verify its *integrity*. If everything is in order, they then forward a confirmation message to other nodes.

To prevent nodes from turning against the network, they *are rewarded* whenever they find a valid block. We’ll discuss node rewards later.

The high-level components of the blockchain can be enumerated as follows:
- `Protocol`: The set of rules on which the network runs
- `Full Node`: A node that validates transactions and blocks
- `Miner`: A node that gathers transactions and bundles them up in a block
- `Block`: A set of transactions available to the miner at some point in time
- `User`: The human component behind other participants in the network

---
## Footnotes

[1: Availability]
Given the size of the network and transactions happening all over the globe, two nodes might not be aware of the same transactions at the same time.

---
## Practice


Select the item that `is not` part of a blockchain:
             	
???
             	
* Central database
* Set of transactions
* Miner
* Cryptography
* Reward

---
## Revision


What is the name of blockchain participants that verify whole blocks validity?
             	
???
             	
* Full nodes
* Miners
* Traders
* Verifiers
