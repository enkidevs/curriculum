# Identity and Consensus
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

The 'key' behind any blockchain is the cryptographic protocol on which it runs. Asymmetrical cryptography, or public-key cryptography, is a system that uses a pair of two keys for encryption and decryption: a public key and a private key.

The private key is randomly generated using a set of rules. The public key is derived from the private key. Their purpose is given away by their name: the public keys are made available to everyone, while the private keys should be kept secret at all times.

Without going into too much detail, consider this simple example:
```
Generated private key (8 chars): aNsjti!k
```
The private key is always 8 chars long. As the algorithm to compute the public key, we concatenate odd index characters in the private key (starting at index 0):
```
Derived public key (4 chars): Njik
```
In the above example, the key can be brute-forced easily. In the real world, computing the private key from the public key should be infeasible.

On the blockchain, someone's identity is their public key. The private key is the proof of identity. By themselves, neither key can be used to authorize transactions. Combining them, however, yields what is called a "digital signature". The digital signature authorizes the blockchain to record actions as being taken by the signing user.

### Consensus

Consider the following scenario: you and your friends want to go out coffee but you are having a hard time deciding where. You all have loyalty cards for different coffee shops (say you receive a free 6th coffee), so everyone is incentivize to voice their opinion. 

You could split, buy your desired coffee and meet later - but you won't be able to chit-chat over coffee anymore. Being all equal, you must reach a **consensus**. What if you race 100m and the winner picks the place? What if you promise to pay for their coffee if your friends don't enjoy it? What if one of the option is Starbucks, but you would rather drink a real coffee? How about agreeing to meet every week for a coffee at a different place?

This is also the case for blockchain: there has to be a consensus about what block is added next by the miners. Consensus algorithms are needed to prevent *double-spending*. There isn't a singular *consensus algorithm*, but they are rather case-specific. We will cover the most popular ones later.

---
## Practice

What is the type of cryptography used for authentication on a distributed network?

???

What is the outcome of reaching a consensus?

???

* Public-key cryptography
* A new block is added
* RSA
* The network achieves decentralization
* New tokens are created
* Symmertrical cryptography

---
## Revision

What problem is solved by waiting for consensus before adding new blocks?

???

* Double-spend
* 51% attack
* Sybil attack
* Replay attack

