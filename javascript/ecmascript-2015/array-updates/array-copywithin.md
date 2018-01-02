# Array.copyWithin
author: lizTheDeveloper

levels:

  - basic

  - medium

type: normal

tags:

  - introduction

  - workout

  - new

  - arrays

  - es6

inAlgoPool: false

category: feature

---
## Content

**Array.copyWithin(targetArray, [start, [end]])** shallow copies part of an array into the same array without modifying the original array's size.

Look at the following array:

```javascript
var alphabet = ["a","b","c","d","e"];
```

To copy the first two characters into the 2nd index we could use **Array.copyWithin** as follows:

```javascript
alphabet.copyWithin(2,0,2);
// ["a","b","a","b","e"]
```

Using the default values for the last two arguments, we could shorten the above to:

```javascript
alphabet.copyWithin(2)
// ["a","b","a","b","c"]
```

**Array.copyWithin** also supports negative indexes:

```javascript
alphabet.copyWithin(-2)
// ["a","b","c","a","b"]
```

---
## Practice

Complete the code example to create an array that looks like this:
`['7','3','4','5','6','7']`

```javascript
let ints = ['1','2','3','4','5','6','7'];
ints.copyWithin(???,???,???)
```
* 1
* 2
* 3
* 4
* 5
* 6
* 7
* 8
* 9
* 0
---
## Revision

Complete the code example to create an array that looks like this:
`['1','2','1','2','5','6']`

```
let ints = ['1','2','3','4','5','6'];
ints.copyWithin(???,???,???)
```
* 1
* 2
* 3
* 4
* 5
* 6
* 7
* 8
* 9
* 0
