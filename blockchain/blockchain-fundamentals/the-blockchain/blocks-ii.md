---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Interactive tutorial of how blocks are
    built](https://anders.com/blockchain/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Hash Functions


---

## Content

Informally, a **hash function H** is a function that compresses an input of any size to a string of fixed length. The length of the output depends on the function specifications, but the most common you will see are `256`, `384`, or `512` bits long.

They are one-way functions: the compression algorithm is fairly simple and always yields the same result, but the chance of finding the input based on the hash string is close to nil. The current standard is `FIPS-202` (a.k.a. Secure Hash Algorithm 3, or simply SHA-3).

Consider the following examples:

```plain-text
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


---

## Practice

What function is used to check if the content of any block has been altered?

???

Identify a property of the above function:

???

- Hash function
- One-way function
- Public-key function
- Reductor function
- Bijective function
- Reversible function
