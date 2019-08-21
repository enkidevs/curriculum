---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  blockchain.analyze-blockchain-components.0: 20
  blockchain.analyze-blockchain-components.1: 20
  blockchain.analyze-blockchain-components.2: 20
  blockchain.analyze-blockchain-components.3: 20

aspects:
  - introduction

links:
  - '[First block mined](https://blockchain.info/block/000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f)'

---
# The Bitcoin Block

---
## Content

The process of validating a Bitcoin block is called **proof of work** (PoW). We'll talk more about PoW and other *consensus algorithms* in a future workout, but, for now, you should know that it describes a process in which miners try to solve a cryptographic puzzle.
             	
The content of a Bitcoin block is a list of transactions available to the miner at a certain point in time.
             	
The simplest way to compute a block's address is to hash the previous block reference, as well as the new block's content and header. Bitcoin makes everything harder by introducing the miner's identity into the equation and the concept of a **nonce**, or a random number that has to be added to the hash input such that the hash meets a certain criteria. The puzzle is finding the right nonce that makes the hash meet the network requirement.
             	
Recall that any byte changed in the input changes the output drastically: by incrementing the nonce, a new hash is obtained. The block is *valid* if the resulting hash starts with more than the predetermined number of *0*'s. The hash is always 64 characters (64 bytes) long and the number of *0*'s is the difficulty. The difficulty is set by the network and it depends on the processing power (this is also called hashing power) that the network has.
             	
The more 0's the hash has to start with, the more difficult the computation is. The first block mined had *difficulty 1* and it needed to begin with at least 8 *0*'s. The last block discovered (at the time of writing) had a difficulty of *3 trillion*, or roughly 18 *0*'s. This difficulty is equivalent to a hash rate of 22,500 PH/s (PetaHashes/s), or 22 million trillion hashes per second.
             	
In the learn more section, you’ll find a link to an online block explorer where you can play around.

---
## Practice

What is the consensus algorithm implemented in the Bitcoin blockchain?
             	
???
             	
* Proof of work
* Proof of stake
* Proof of burn
* Proof of authority

---
## Revision

In the context of Bitcoin mining, what is the component a miner is searching for?
         	    
???
             	
* The nonce
* The transactions
* The previous block's hash
* The hash
