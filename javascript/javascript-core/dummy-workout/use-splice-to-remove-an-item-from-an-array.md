---
author: madhavipenumatsa
levels:
  - basic
  - beginner
type: normal
category: how-to
tags:
  - delete item from array
links:
  - '[developer.mozilla.org](https://developer.mozilla.org/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Use `splice()` to remove an item from an array


---

## Content

Use `splice` instead of using `delete` to erase an item from an array. Using `delete` replaces the item with `undefined` instead of removing it from the array entirely.

Instead of:

    var items = [12, 548 ,'a' , 2];
    items.length; // returns 4
    delete items[3]; // return true
    items.length; // returns 4
    // items = [12, 548, 'a', undefined × 1]

Use `splice(startPos, length)`:

    var items = [12, 548 ,'a' , 2];
    items.length; // returns 4
    items.splice(3,1);
    items.length; // returns 3
    // items = [12, 548, 'a']

The delete method should *only* be used to delete an object property.


---

## Practice

Complete the following snippet:

```javascript
var ar = [1,2,3,'5'];
delete ar[2]; // ar = ???
// splice(startingPos,deleteCount)
ar.splice(2,2); // ar = ???
```

- `[1,2,undefined,’5’]`
- `[1,2]`
- `[1,3,’5’]`
- `[1,’5’]`
- `[1,2,3,’5’]`


---

## Revision

Let `var x = [1,4,6,8]` .

After calling `splice(1,1)`  on x , it will contain ??? .

- `[1,6,8]`
- `[4,6,8]`
- `[1,undefined,6,8]`
 
