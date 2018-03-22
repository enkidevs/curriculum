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

links:
  - '[The authoritative guide to blockchain development](https://medium.freecodecamp.org/the-authoritative-guide-to-blockchain-development-855ab65b58bc)'

  - '[Ethereum\'s inventor, Vitalik Buterin, about blockchains and Ethereum](https://www.youtube.com/watch?v=WSN5BaCzsbo)'

---
## Content

A **blockchain** (a literal chain of blocks) is a peer-to-peer network which is looking to build and maintain a sequence of information bundles. For the information to be added to the sequence, it has to be verified first by trust-worthy nodes.

[Linked list of blocks here]

The main goal of blockchains is to give back to individuals the control over their own data, in contrast to having huge, private companies taking advantage of that. The power of the network comes from its **decentralization**, **high availability** and its **tamper resistance**, given enough nodes are part of the network. Every blockchain is using cryptography concepts, such as asymmetric cryptography and hash functions, to establish, support and maintain properties like decentralization, data integrity and anonymity.

Theoretical blockchains go back to the early 90's, when multiple different projects were aiming to creat fully digitized, decentralized and securitized payment systems[1]. Most of them never had the chance to see the light of day, and those who had were unsuccessful.

However, in January 2009, the first public blockchain was released - the Bitcoin blockchain. It was created by a person/group of people that signed as Satoshi Nakamoto. We will cover Bitcoin blockchain in a future workout so we won't dive into details right now.

What is important to point out though is that, although limited in functionality, Bitcoin worked as proof-of-concept for more complex blockchains. The peer-to-peer payment system pionereed by Bitcoin allowed forward thinkers to extend the concept to incorporate applications like crowdfunding, domain registration, prediction markets, voting, etc. 

Having an individual blockchain for each every project isn't wanted, nor scalable. The most complex project so far, Ethereum, is a blockchain that works as a framework for developing and sharing any kind of application by writing code in its Turing-complete programming language, Solidity.

Blockchains had to start by doing one thing (and doing it well). Consider the following list of concepts one has to familiarize with to develop and release a blockchain:
- Data structures: linked lists, hash maps and graphs (merkle trees)
- Cryptography: asymmetric (public-key) cryptography, hash functions
- Distributed systems:  consensus, consistency and sharding
- Networking: peer-to-peer protocols, the packet model, routing
- Economy: game theory, macroeconomics 

Another proof of the worthiness and capabilities of this technology comes from Estonia: the small european country started managing its registers, such as national health, judicial, security and commercial code systems on their own blockchain. The system has been live since 2012 and their initiative is only moving forward.

---
## Footnotes

[1: Projects old as time]
Nick Szabo's `bit gold` is the one most similar to Satoshi Nakamoto's Bitcoin, but just in theory. It had never come to see the light of day.

`DigiCash` was also a company trying to create a fully digital currency. Founded by David Chaum in 1990, it filed for bankruptcy in late 90's.

[2: Blockchain identity theft]
While computing the private key that determines your identity is infeasible for an attacker, having the key stolen as is, either physically or digitally, is still a threat.

---
## Practice

Identify the first application of a blockchain:

???

* peer-to-peer payment system
* domain name registration
* distributed database of public records
* proof-of-concept for cryptographic mechanisms

---
## Revision

A blockchain is a ??? network.

* distributed
* centralized
* free

---
## Quiz

headline: What does the following definition refer to?

question: Can you identify what concept can be defined by the `sequence of data bundles` syntagm?

answers:
  - Blockchain
  - Inheritance
  - Deposition
  - Block

