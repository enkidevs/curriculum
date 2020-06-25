---
author: mihaiberq

levels:
  - beginner

  - basic

type: normal

category: must-know

standards:
  blockchain.analyze-blockchain-components.3: 10
  blockchain.identify-blockchain-applications.0: 30
  blockchain.identify-blockchain-applications.1: 10
  blockchain.identify-blockchain-applications.2: 10

aspects:
  - introduction
  - workout

---
# Bitcoin

---
## Content


**Bitcoin** was the first public blockchain which works as a ledger for tracking bitcoin token[1] transactions happening between users. A token is a "e-currency based on cryptographic proof"[2]. The first block was mined on the 3rd of January 2009.
             	
It was all the idea of Satoshi Nakamoto (or a team with that alias). No one knows who Satoshi Nakamoto really is. There’s been plenty of speculation over the years about who it was, but none of them were confirmed.
             	
Some say this worked in favor of Bitcoin: by using a pseudonym, Satoshi Nakamoto made sure the spotlight was pointing at the technology rather than the person behind it. Slowly, but surely, the value of Bitcoin increased year by year, attracting more and more enthusiasts.
             	
But the skyrocketing price is not the reason Bitcoin is great. Yes, it is fairly limited in functionality and initially slow, but without it there wouldn't have been any blockchains. Like any pioneer, Bitcoin survived through numerous scandals, regulatory commissions and heists, going a long way to prove it is worth adopting.
             	
A Bitcoin block contains a list of **transactions** between network participants. To receive bitcoins, you don't necessarily have to be an active participant, but you do need a Bitcoin address. A **Bitcoin address** is the public half of the **digital signature** used to sign outgoing transactions. As long as you have a **public key**, anyone can send you bitcoins. If you also have the **private key**, you can send bitcoins to others.
             	
A Bitcoin transaction looks something like this:
             	
```bash
Satoshi Nakamoto sends 10 bitcoins
to Hal Finney
```
             	
What might seem strange is that no absolute balance is kept on the blockchain. This model is called **UTXO**, or *Unspent Transaction Output*.


---
## Footnotes
[1: Bitcoin and bitcoin]
If Bitcoin is capitalized, it refers to the blockchain, otherwise to the BTC token.

[2: P2P Bitcoin announcement]
This is the first post in which Satoshi Nakamoto announces Bitcoin to the public: http://p2pfoundation.ning.com/forum/topics/bitcoin-open-source

---
## Practice

Identify the two cryptographic mechanisms that combined produce a `digital signature`:
             	
???
             	
* Public key and private key
* Public key and UTXO
* Private key and full name
* A photo of your signature and an encryption algorithm


---
## Revision

What is the transaction model used by the Bitcoin blockchain?
             	
???
             	
* UTXO model
* Account model
* A combination of UTXO and account models
* A simple transaction

