---
author: mihaiberq

levels:

  - basic

  - medium

type: normal

category: must-know

standards:
  blockchain.analyze-network-security-policy.0: 10
  blockchain.analyze-network-security-policy.1: 20
  blockchain.analyze-network-security-policy.2: 20
  blockchain.analyze-network-security-policy.3: 20
  blockchain.analyze-network-security-policy.6: 10
  blockchain.analyze-network-security-policy.7: 10
  blockchain.analyze-network-security-policy.8: 10

aspects:

  - introduction

  - deep

---
# Proof of Work (PoW)

---
## Content

**Proof of work** is the original consensus algorithm for blockchains. It is based on the 'work harder, not smarter' principle: you can't trick the blockchain if honest miners are working harder than everyone else is.
             	
PoW blockchains will always favor the longest chain of blocks, that is the chain that had the most work put into it. Assuming most miners work on the same chain, that will be the one to grow the fastest and be the most trustworthy. Any PoW blockchain is safe as long as a minimum of 50% of miners are honest.
             	
The advantage of PoW algorithms is that they are straightforward: everybody solves the same puzzle; but finding an adequate puzzle is difficult. Some of the properties of a proper problem are:
- Should be difficult to compute.
- Should allow for parameterizable cost: the difficulty should grow or shrink relative to the total computing power in the network.
- The solution should be trivial to verify as every node in the network will have to carry through with the process.
             	
The most common puzzles are of two types: computational heavy (many operations) or memory heavy (big input data). On the one hand, the double SHA-256 function used in Bitcoin (and others) has to be computed for every nonce in a very large interval. On the other hand, in Ethereum, the complexity is given by the large data set (1GB) rather than a variable nonce.
             	
PoW requires miners to invest in mining hardware: ASICs or GPU cards. This is an **external investment** where the retailers that sell the hardware have no direct involvement in the development of the blockchain (other than profiting off of it). On top of the already elevated overhead cost of electricity and the low transaction throughput, there are enough compelling reasons for blockchains to migrate from proof of work to proof of stake.


---
## Practice

In the context of Bitcoin, what is the puzzle solved?
             	
???
        	     
* Finding a hash less than a target
* Computing private keys
* Reversing a hash
* Finding a Cunningham chain

---
## Revision

Who does PoW scheme usually advantage?
             	
???
             	
* Big players with lots of resources
* Average miner
* Those with over 1000 coins
* No one in particular

---
## Quiz

### Identify the resource intensive consensus algorithm.

Which mining validation technique is the most resource intensive for miners?


- Proof of work
- Proof of stake
- Proof of burn
- Proof of sweat

