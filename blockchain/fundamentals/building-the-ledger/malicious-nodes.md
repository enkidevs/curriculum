---
author: mihaiberq

type: normal

category: must-know

---

# Malicious Nodes

---

## Content

The double-spend attack isn't the only threat to a blockchain and is far from being the most destructive.

**Malicious nodes** are an inevitable property of open, distributed networks. Some join trying to disrupt the network, others to steal assets.

Taking control of the network is also possible, but comes at a great cost. What follows is a succinct list of possible attacks:
- 51% attack
- Sybil attack
- Replay attack
             	

### 51% attacks

A single entity controlling more than half of the network resources is also controlling the network as a whole. Blocks can be rewritten, accounts can be emptied, transactions can be ignored. This is probably the most destructive attack that could happen.

Possible in theory, but very hard in practice. The size of the network is proportional with the difficulty of pulling of such an attack. But, once this happens, the attack succeeds and cannot be reversed.

### Sybil attacks

An attacker fills the network with nodes whose goal isn't to control the network per se, but rather help the execution of other attacks. If there are malicious nodes in the network, they can ignore certain transactions, allowing double-spending attacks to happen and even isolate people from the network altogether (DoS attack).  

### Replay attacks

This type of attack happens when two forked crypto-currencies allow transactions to be valid across both chains.

For example, you stored all you `Coin` in one wallet. After a while, `Coin` split into `Coin1` and `Coin2`.

You create a transaction saying send one `Coin` to an address `X`. You broadcast this to the `Coin1` network and, after confirmation, your transfer is successfull.

In the meantime, someone sees your transaction data and copies it. This time though, they broadcast it to the `Coin2` network. If there is no replay protection, the transaction is considered valid. 

### Conclusion

To prevent nodes from trying to interfere with the network, the blockchains rewards (*block reward*) the miners proposing a valid block, that ends up in the blockchain.

---

## Practice

What is it that keeps nodes from going bad?

??? incentives and ???

- Monetary
- Exclusion from blockchain
- Good faith
- Higher pick rate

---

## Revision

Identify a blockchain attack that, although unlikely, has 100% rate of success.

???

- 51% network control
- Sybil attack
- Double-spend attack
- DDoS
 
