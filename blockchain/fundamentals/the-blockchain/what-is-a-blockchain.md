---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  blockchain.analyze-blockchain-components.4: 30
  blockchain.identify-blockchain-applications.0: 10
  blockchain.identify-blockchain-applications.3: 10
  blockchain.identify-blockchain-applications.4: 20

aspects:

  - introduction

  - workout

links:
  - >-
    [The authoritative guide to blockchain development](https://medium.freecodecamp.org/the-authoritative-guide-to-blockchain-development-855ab65b58bc)
  - >-
    [Ethereum's inventor, Vitalik Buterin, about blockchains and Ethereum](https://www.youtube.com/watch?v=WSN5BaCzsbo)
  - >-
    [Examples of blockchain use-cases](https://medium.com/@matteozago/50-examples-of-how-blockchains-are-taking-over-the-world-4276bf488a4b)

---
# What Is a Blockchain?

---
## Content

A **blockchain** (a literal chain of blocks) is a peer-to-peer network designed to build and maintain a sequence of information bundles. For the information to be added to the sequence, it has to be verified first by decentralized nodes.

![blockchain](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20320%20221%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EGroup%207%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20fill%3D%22%23FFF%22%20fill-rule%3D%22nonzero%22%20width%3D%22320%22%20height%3D%22221%22%20rx%3D%229%22%2F%3E%3Cg%20fill%3D%22%23414143%22%3E%3Cpath%20d%3D%22M69%2031l17%209.59V59l-17-9.59zM87.06%2020L104%2029.527%2087.06%2039%2070%2029.527zM88%2059l17-9.59V31l-17%209.59z%22%2F%3E%3C%2Fg%3E%3Cpath%20d%3D%22M112.5%2040.25h22M160%2083.5V65M160%20154v-18.5%22%20stroke%3D%22%23414143%22%20stroke-width%3D%223%22%20stroke-linecap%3D%22square%22%2F%3E%3Cg%20fill%3D%22%23414143%22%3E%3Cpath%20d%3D%22M142%20101l17%209.59V129l-17-9.59zM160.06%2090L177%2099.527%20160.06%20109%20143%2099.527zM161%20129l17-9.59V101l-17%209.59z%22%2F%3E%3C%2Fg%3E%3Cg%20fill%3D%22%23414143%22%3E%3Cpath%20d%3D%22M142%20170l17%209.59V198l-17-9.59zM160.06%20159l16.94%209.527L160.06%20178%20143%20168.527zM161%20198l17-9.59V170l-17%209.59z%22%2F%3E%3C%2Fg%3E%3Cpath%20d%3D%22M186.5%20110.25h22%22%20stroke%3D%22%23414143%22%20stroke-width%3D%223%22%20stroke-linecap%3D%22square%22%2F%3E%3Cg%20fill%3D%22%23414143%22%3E%3Cpath%20d%3D%22M215%20101l17%209.59V129l-17-9.59zM233.06%2090L250%2099.527%20233.06%20109%20216%2099.527zM234%20129l17-9.59V101l-17%209.59z%22%2F%3E%3C%2Fg%3E%3Cg%20fill%3D%22%23414143%22%3E%3Cpath%20d%3D%22M142%2031l17%209.59V59l-17-9.59zM160.06%2020L177%2029.527%20160.06%2039%20143%2029.527zM161%2059l17-9.59V31l-17%209.59z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The main goal of the blockchain is to give individuals control of their own data back; in contrast to private companies who often take advantage of it. The power of the network comes from its **decentralization**, **high availability** and its **resistance**, given that multiple nodes are part of the network. Every blockchain uses cryptography concepts, such as asymmetric cryptography and hash functions, to establish, support and maintain properties like data integrity and anonymity.
             	
Theoretical blockchains go back to the early 90's, when multiple different projects were aiming to create fully digitized, decentralized and securitized payment systems[1]. Most of them never had the chance to see the light of day, and those which did were unsuccessful.
             	
However, in January 2009, the first public blockchain was released - the Bitcoin blockchain. It was created by a person or group of people named Satoshi Nakamoto. More to come on this later.
             	
What is important to point out is that, although, limited in functionality, Bitcoin worked as a proof-of-concept for more complex blockchains. The peer-to-peer payment system pioneered by Bitcoin allowed forward thinkers to extend the concept to incorporate applications like crowdfunding, domain registration, prediction markets, voting, and so on.
             	
Having an individual blockchain for each and every project isn't desirable, nor scalable. One of the most ambitious projects so far, Ethereum, is a blockchain that works as a framework for developing and sharing any kind of application by writing code in its quasi Turing-complete programming language, Solidity.
             	
Blockchains had to start by doing one thing (and doing it well). Consider the following list of concepts one has to familiarize themselves with to develop and release a blockchain:          	
- Data structures: linked lists, hash maps and graphs (merkle trees)
- Cryptography: asymmetric (public-key) cryptography, hash functions
- Distributed systems:  consensus, consistency and sharding
- Networking: peer-to-peer protocols, the packet model, routing
- Economy: game theory, macroeconomics
             	
Another proof of the worthiness and capabilities of this technology comes from Estonia: the small european country started managing its registers, such as national health, judicial, security and commercial code systems - on their own blockchain. The system has been live since 2012 and their initiative is only moving forward.


---
## Footnotes

[1: Projects old as time]
Nick Szabo's `bit gold` is the one most similar to Satoshi Nakamoto's Bitcoin, but just in theory. It had never come to see the light of day.

`DigiCash` was also a company trying to create a fully digital currency. Founded by David Chaum in 1990, it filed for bankruptcy in late 90's.

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

### What does the following definition refer to?

Can you identify what concept can be defined by the `sequence of data bundles` syntagm?

- Blockchain
- Inheritance
- Deposition
- Block

