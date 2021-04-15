---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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

Replay attack isn't specific to blockchains or distributed networks. It refers to a malicious agent intercepting a request that contains identifying information over an insecure network (be it wallet transactions, card payments, logins etc.) and sending it again to the same destination, pretending to be the initial sender.

In the case of wallet transactions, an account can be drained by repeatedly sending copies of same transaction to the nodes.

As for blockchain, it might be possible to replay transactions on forked networks, where the core code/logic is the same. With no replay protection in place, a transaction broadcasted on the fork can be copy-pasted and broadcasted on the main as well, draining that account.

### Conclusion

Given the scenarios above, how do you prevent node from "going bad"? Well, positive reinforcement works most of the times: miners/voters (those who secure the network) receive a block reward if the block is valid and acknowledged by enough nodes.


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
