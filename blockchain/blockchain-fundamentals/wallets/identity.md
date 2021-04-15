---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Protocol for generating the public
    address](https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses){website}
  - >-
    [Simpler
    explanation](https://bitcoin.stackexchange.com/questions/25024/how-do-you-get-a-bitcoin-public-key-from-a-private-key){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Identity


---

## Content

The 'key' behind any blockchain is the cryptographic protocol on which it runs. Asymmetrical cryptography, or public-key cryptography, is a system that uses a pair of two keys for authentication and authorization: a public key and a private key. The pair of keys is *your address on the blockchain*.

The transaction example in one of the first workouts was:

```plain-text
Alice sends Bob 10 coins
```

But this isn't really how transactions look like in the real world. An actual Bitcoin address looks like this:

```plain-text
1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa
```

The private key is randomly generated using a set of rules. The public key is derived from the private key. Their purpose is given away by their name: the public keys are made available to everyone, while the private keys should be kept secret at all times.

Without going into too much detail, consider this simple example:

```plain-text
Randomly generated private key (8 chars):
  aNsjti!k
```

The private key is always 8 chars long. As the algorithm to compute the public key, we concatenate odd index characters in the private key (starting at index 0):

```plain-text
Derived public key (4 chars):
  Njik
```

In the above example, the key can be brute-forced easily. In the real world, computing the private key from the public key should be infeasible.

On the blockchain, someone's identity is their public key. The private key is the proof of identity. By themselves, neither key can be used to authorize transactions. Combining them, however, yields what is called a "digital signature". The digital signature authorizes the blockchain to record actions as being taken by the signing user.

There are two algorithms, one for signing and one for verifying, that make use of the public and private keys:

```plain-text
Signature generation S
S = (message, private key)
  -> message signature
             	
Signature verification V
V = (message, public key, message signature)
  -> outputs true or false
```

The actual protocol for computing it is public for transparency reasons. You can find a link attached to the Bitcoin wiki about the process.


---

## Practice

What is the type of cryptography used for authentication on a distributed network?

???

- Public-key cryptography
- A new block is added
- RSA
- The network achieves decentralization
- New tokens are created
- Symmetric cryptography


---

## Revision

What is the type of cryptography used for authentication on a distributed network?

???

- Public-key cryptography
- A new block is added
- RSA
- The network achieves decentralization
- New tokens are created
- Symmetric cryptography
