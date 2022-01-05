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

# What are Smart Contracts?


---

## Content

Ethereum's code files are **smart contracts**. Ethereum Virtual Machine is a runtime environment for executing compiled smart contracts: EVM does not run Solidity directly, but rather runs the *bytecode* obtained by compiling `.sol` files[1].

It’s worth stating that smart contracts are not Ethereum-specific: the concept of having a piece of code regulate the behavior of an external institution is much older. 

Here's an example of a Solidity smart contract. We'll cover in-depth what each keyword means later on:

```javascript
pragma solidity ^0.4.23;
             	
contract MyAwesomeToken {
  mapping (address => uint) public
	ownerToBalance;
	
  function setBalance(address owner,
	uint newBalance) public {
      require(msg.sender == owner);
      ownerToBalance[owner] = newBalance;
  }
             	
  function getBalance(address owner) public
	view returns (uint) {
  	return ownerToBalance[owner];
  }
}
```

Once deployed, the contract would receive its own unique address. The address works similarly to any other public key on the network. Next, one can direct a transaction calling `setBalance` function to the contract's address. In our case, if they were using their *own* address (`require` at line 8) and a random balance as parameters, the contract would create the mapping (line 9). As you can see, the language has a mix of both JavaScript (as the main influencer) and Java keywords, plus some of its own.

Smart contracts are different than your usual code files. They are **immutable**. Once up there, users can interact with them forever. Without proper tests and checks, nasty problems can occur, but more on this later.


---

## Footnotes

[1: Code files]
Solidity is not the only language supported by the EVM, but rather the most known. Others include Vyper, LLL and Bamboo.


---

## Practice

What do you have to pay for to publish a smart contract on the blockchain?

???

- Memory, disk and computing power
- A fixed fee every month
- Disk storage
- Nothing


---

## Revision

What is the difference between a smart contract and code files written in other languages?

???

- Smart contracts are immutable once published
- Smart contracts are more secure
- Other code files compile faster
- There is no difference other than syntax
