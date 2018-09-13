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
# ERC721 Tokens

---
## Content

**ERC721** tokens, on the other hand, are better suited for things you can not have 0.5 of, say cryptokitties[1]. ERC721 tokens are assumed to be unique and indivisible. You can only move them round in whole units, each one having a unique ID. They are known as *non-fungible tokens*.

To better understand the difference, you can imagine that the main `address => uint256` mapping links an owner and the unique ID of something. The ID must be generated deterministically, usually by hashing object's properties.

The list of methods looks similar that of ERC20 standard:
```
contract ERC721 {
  event Transfer(address indexed _from, 
    address indexed _to, uint256 _tokenId);
  event Approval(address indexed _owner,
    address indexed _approved, 
    uint256 _tokenId);

  function balanceOf(address _owner) 
    public view returns (uint256 _balance);
  function ownerOf(uint256 _tokenId) 
    public view returns (address _owner);
  function transfer(address _to,
    uint256 _tokenId) public;
  function approve(address _to,
    uint256 _tokenId) public;
  function takeOwnership(uint256 _tokenId)
    public;
}
```

Note: The ERC721 standard is currently a draft, and there is no officially agreed-upon implementation yet. However, you can find an example implmenetation in OpenZeppelin repository.

---
## Footnotes
[1: Cryptokitties]
https://www.cryptokitties.co/

---
## Practice

Does ERC721 token standard support decimals?

???

* False
* True

---
## Revision

What are usually the types of the main mapping of a ERC721 token?
```
??? => ???
```
* address
* ID (uint256)
* int256
* balance (uint256)
* string
