---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Interactive tutorial of how blocks are
    built](https://andersbrownworth.com/blockchain){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Hashing Block Data


---

## Content

If any piece of data can be represented as a unique string of fixed length, what if, to build block N, we are to hash the content of block N-1 and block N-1's reference to block N-2.

By including the content, any modification done to it would change the hash. By also including the reference to block N-2, we ensure that every block before cannot be tampered with.

We would then be able to give a somewhat formal representation of what is hashed:

```plain-text
// '|' = concatenation of strings
ref(n) = H(header(n) | content(n)
  | ref(n-1))
```

This reference is also called the **address** of the block. Depending on the blockchain, other variables might find their way into the hash function in order for the network to validate it. We'll talk about how this works using the Bitcoin and Ethereum blockchains as examples in future workouts.

But for now, consider a network that accepts any block that contains the previous block reference:

It's worth talking about the **genesis block** or the first block of the blockchain: as there's no previous block, the reference will be equal to `0`.

In the *Learn more* section you can find a link to an interactive website that allows you to create and append blocks to a simplified version of the Bitcoin blockchain.


---

## Practice

Identify the input to the hash function that yields the address of a new, generic block:

???

- Previous block's reference and current's content and header
- Genesis block's reference and previous' reference
- Account transactions and the reference to the previous block
