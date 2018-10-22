---
author: mihaiberq

levels:

  - basic

  - medium

type: normal

category: must-know

standards:
  blockchain.identify-blockchain-applications.3: 10
  blockchain.analyze-smart-contracts.0: 10

aspects:

  - introduction

  - deep

---
# What Does Ethereum Do Differently?

---
## Content

Other than being distributed and having a PoW algorithm initially, Ethereum does pretty much everything else *differently* than Bitcoin.
             	
### Account
             	
Ethereum is using an **account model** aka balance model. You are probably familiar with the centralized version of this since it's employed by banks. The problem with a decentralized account model is its vulnerability to *replay attacks*: if you broadcast a signed transaction in which you pay Bob 0.5 ETH, Bob could re-broadcast the exact same transaction (being signed and everything) multiple times to withdraw all of your funds. To prevent these attacks, Ethereum accounts attach to transactions their *sequence number* (nonce). Once a nonce has been redeemed once, every other transaction that has a nonce less or equal that the last value redeemed is dropped.
             	
### Transactions
 	            
Ethereum accepts more than transfer transactions. Given its capability of running code, Ethereum has special transactions used to interact with smart contracts: creation, calling, state querying.
             	
Regardless of transaction type, 4 variables are required:
             	
* Gas price: higher gas price means a higher transaction fee and makes nodes more likely of including the transaction in the next block
* Gas limit: depending on the resources used by the smart contract, the amount of gas used is determined; if the gas limit is exceeded (transaction costs more than you wanted to pay), the transaction is dropped but the transaction fee is not returned
* Nonce: transaction sequence number
* From: transaction signatory
      	       
### Solidity

**Solidity** is Ethereum's most popular programming language. All you have to do is throw some Solidity code (similar to JavaScript in syntax) into a `.sol` file and deploy the smart contract on the blockchain. There are a few tools you can use, but probably the easiest to set-up is `Remix`[1] compiler.

Another language that is supported by the EVM is Vyper, similar in structure and syntax to Python.
             	
### Token Standards
             	
Another feature of Ethereum is **token standards**: an interface for cryptocurrencies recognized by the Ethereum blockchain. The most notable token standard is ERC20. But why would you use the standard instead of releasing a blockchain of your own? Well, having to find people to mine/stake your blockchain and low adoption are the main reasons new blockchains fail.
             	
Moreover, Ethereum became a decentralized crowdfunding platform: you could launch your own project right away and ask people that owned ether to sponsor it in exchange for your tokens ("stock").

---
## Footnotes

[1: Remix]
https://remix.ethereum.org/

---
## Practice

Fill in the gaps such that the next sentence makes sense:
```
Bitcoin blockchain functionality is
limited to ???
while Ethereum blockchain can also
??? 
```

* tracking a digital currency
* run and store applications
* solve world hunger
* ASICs for solving PoW
* use GPUs

---
## Revision

Identify the programming language used to write smart contracts on the Ethereum blockchain:
             	
???
             	
* Solidity
* Java
* C++
* Ethereum

