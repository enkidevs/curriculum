---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

aspects:

  - introduction

---
# ERC20 Tokens

---
## Content

**ERC20** is the standard used to represent currencies. It allows for basic account functionalities like transfer, get address balance, or get total supply.

The basic ERC20 interface looks like this[1]:
```
contract ERC20BasicInterface {
  function totalSupply() public 
    view returns (uint256);
  function balanceOf(address who) public 
    view returns (uint256);
  function transfer(address to, 
    uint256 value) public returns (bool);
  event Transfer(address indexed from,
    address indexed to, uint256 value);
}
```
And it was extended to include[2]:
```
contract ERC20Interface is ERC20BasicInterface {
  function allowance(address owner,
    address spender) 
    public view returns (uint256);
  function transferFrom(address from, 
    address to, uint256 value)
    public returns (bool);
  function approve(address spender, 
    uint256 value)
    public returns (bool);
  event Approval(address indexed owner,
    address indexed spender, uint256 value);
}
```
The basic functions are straight-forward. The `Transfer` event is triggered when tokens are transferred and can be listened to. An event has to be explicitly called in the function.

The second contract interface extends the basic one with functionality to manage funds on behalf of users. One use case is having a second smart contract contain the logic that deals with token transfers. Like `Transfer`, `Approval` should be triggered at the end of `approve` function.

Some information needed to define a ERC20 token is:
- address of smart contract
- total amount of tokens available
- name
- decimals (from 0 to 18)

---
## Footnotes
[1: ERC20 basic interface]
https://github.com/ethereum/EIPs/issues/179

[2: ERC20 interface]
https://github.com/ethereum/EIPs/issues/20

---
## Practice

Does ERC20 token standard support decimals?

???

* True
* False

---
## Revision

Does the ERC20 standard define the actual implementation of the `balanceOf` function?

???

* False
* True