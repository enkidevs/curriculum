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

# ERC721 Tokens


---

## Content

**ERC721** tokens, on the other hand, are better suited for things you can not have 0.5 of, say cryptokitties[1]. ERC721 tokens are assumed to be unique and indivisible. You can only move them round in whole units, each one having a unique ID. They are known as *non-fungible tokens*.

To better understand the difference, you can imagine that, while ERC20 contains an `address => balance` mapping, ERC721 contains an `uniqueObjectId => address` mapping. The ID must be generated deterministically and must also be a positive integer (most of the times - strings also work).

The list of methods looks similar to that of ERC20 standard:

```javascript
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

Note: The ERC721 standard is currently a draft, and there is no officially agreed-upon implementation yet. However, you can find an example implementation in OpenZeppelin repository.


---

## Footnotes

[1: Cryptokitties]
<https://www.cryptokitties.co/>


---

## Practice

ERC721 token standard supports decimals?

???

- False
- True


---

## Revision

What are usually the types of the main mapping of a ERC721 token?

```plain-text
??? => ???
```

- unique ID
- address (uint256)
- int256
- balance (uint256)
- string
