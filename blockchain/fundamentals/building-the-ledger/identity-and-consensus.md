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


---
## Practice

For a single ledger to be built, the nodes must agree on ???

* transactions that go in a block and their order
* which nodes are malicious
* transaction pool

---
## Revision

Evaluate the following statement:
```
In order for Alice to pay Bob in tokens,
Bob has to be connected the network.
```
???

* False
* True

