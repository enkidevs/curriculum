# Blocks
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
  - '[Interactive tutorial of how blocks are built](https://anders.com/blockchain/)'

---
## Content

Different blockchains and blocks are similar in structure, no matter the implementation. However, the content of a block is not necessarily the same and depends on the goal of the blockchain.

For example, a block in a blockchain that tracks digital currency transactions will register the flow of coins between accounts. A blockchain that allows decentralized distribution of code will most likely store the code. Almost anything that can be stored on the computer can also be stored on the blockchain, in one way or another.

We've got the blocks, now we need the link between them. For any chain to exist, every new node *has* to **reference** the previous block in the blockchain and every block in any blockchain contains such a  reference.

For what it's worth, this concept is what empowered and helped the most in the creation of blockchain. With that reference in place, you know for sure that if a malicious node would want to attack the network and rewrite the history, it would have to recompute every block since then.

### Hash functions

Informally, a **hash function H** is a function that compresses an input of any size to a string of fixed length. The length of the output depends on the function specifications, but the most common you will see are either `256`, `384`, or `512` bits long. They are one-way functions: the compression algorithm is fairly simple and always yields the same result, but the chance of finding the input based on the hash string is close to nil.

The current standard is `FIPS-202` (a.k.a. Secure Hash Algorithm 3 or simply SHA-3). Consider the following examples:
```
string: Enki is great!
SHA3-256: 8b9580615ff7c00180ceae471033b8ced0
  092ea79540db552e6f559af40d53fa

string: Enki is great
SHA3-256: 5e8f454b534ec3eccf0a431d960b67a07a
  cdf21d722a4d9fd1f4f3b35fe67507

string: Blockchain is the future
SHA3-256: 9dc3d2f91fc8a9417a8dfd4c510f4690db
  d3424012ebdedb98d46c55395194e8
```
As you can clearly see, removing the `!` from the first string yields a completly different hash - this ensures that even the smallest change made to a block will be reflected in its hash.

The input doesn't necessarily have to be a string since the function is modyfing the underlying representation, which is always in bits.

### Back to blocks

Now that you've got a basic understanding of what hash functions do, we can say that the *reference* from one block to another is usually the hash of the header of the block, the content of the block and the reference to its previous block:
```
// '|' represents bit concatenation
ref(n + 1) = H(header(n) | content(n)
  | ref(n-1))
```
This reference is also called the **address** of the block. Depending on the blockchain, other variables might find their way into the hash function in order for the network to validate it. We'll talk about how exactly it happens using the Bitcoin and Ethereum blockchains as examples in future workouts.

But for now, consider a network that accepts any block that contains the previous block reference:

[Image here with what goes in a block]

It's worth mentioning about the **genesis block** or the first block of the blockchain: as there's no previous, the reference will be equal to `0`.


---
## Practice

Who decides the condition that must be satisfied for a new block to be added to the chain?

???

* The network
* The miner
* The central authority
* There is no such condition

---
## Revision

Identify the input to the hash function that yields the address of a new, generic block:

???

* Previous block's reference and current's content and header
* Genesis block's reference and previous' reference
* Account transactions and the reference to the previous block

