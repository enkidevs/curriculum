---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  blockchain.analyze-blockchain-components.0: 20
  blockchain.analyze-blockchain-components.1: 10
  blockchain.analyze-blockchain-components.2: 10
  blockchain.analyze-blockchain-components.3: 10
  blockchain.analyze-blockchain-components.4: 20

aspects:

  - introduction

  - workout

links:
  - '[Interactive tutorial of how blocks are built](https://anders.com/blockchain/)'

---
# Blocks

---
## Content

**Blocks** are the structural components of the blockchain. They exist, no matter what problem the blockchain solves. The piece of information that goes in a block is usually called a *transaction*.
             	
In a payment system, a transaction will contain a sender, a recipient and a transaction value. In a domain name registration service, a buyer, the domain bought and the value of the domain will most likely be recorded. The data in a block that stores decentralized applications will most likely be the code. In other words, any application will have its own transaction type.
             	
We've got data that goes in the block, now we need the link between them. We also need a way to ensure that once a block is in a blockchain it can’t be modified - such that a simple reference to its position in the blockchain would not be enough. This is where **cryptographic hash functions** come into play.
             	
### Hash functions
             	
Informally, a **hash function H** is a function that compresses an input of any size to a string of fixed length. The length of the output depends on the function specifications, but the most common you will see are `256`, `384`, or `512` bits long.
             	
They are one-way functions: the compression algorithm is fairly simple and always yields the same result, but the chance of finding the input based on the hash string is close to nil. The current standard is `FIPS-202` (a.k.a. Secure Hash Algorithm 3, or simply SHA-3).
             	
Consider the following examples:
             	
```bash
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
             	
As you can clearly see, removing the `!` from the first string yields a completely different hash - this ensures that even the smallest change made to a block will be reflected in its hash.
             	
The input doesn't necessarily have to be a string since the function is modifying the underlying representation, which is always in bits.
             	
### Hashing block data
             	
If any piece of data can be represented as an unique string of fixed length, what if, to build block N, we are to hash the content of block N-1 and block N-1's reference to block N-2. By including the content, any modification done to it would change the hash. By also including the reference to block N-2, we ensure that every block before cannot be tampered with.
             	
We would then be able to give a somewhat formal representation of what is hashed:
             	
```bash
// '|' = concatenation of strings
ref(n) = H(header(n) | content(n)
  | ref(n-1))
```
             	
This reference is also called the **address** of the block. Depending on the blockchain, other variables might find their way into the hash function in order for the network to validate it. We'll talk about how this works using the Bitcoin and Ethereum blockchains as examples in future workouts.
             	
But for now, consider a network that accepts any block that contains the previous block reference:
                             	
It's worth talking about the **genesis block** or the first block of the blockchain: as there's no previous block, the reference will be equal to `0`.
             	
In the "learn more" section you can find a link to an interactive website that allows you to create and append blocks to a simplified version of the Bitcoin blockchain.


---
## Practice

What function is used to check if the content of any block has been altered?
             	
???
             	
Identify a property of the above function:
             	
???
             	
* Hash function
* One-way function
* Public-key function
* Reductor function
* Bijective function
* Reversible function

---
## Revision

Identify the input to the hash function that yields the address of a new, generic block:
             	
???
             	
* Previous block's reference and current's content and header
* Genesis block's reference and previous' reference
* Account transactions and the reference to the previous block

