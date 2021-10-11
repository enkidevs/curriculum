---
author: pawel
type: normal
category: hack
tags:
  - introduction
  - obscura
links:
  - >-
    [Array Holes](https://medium.com/better-programming/what-are-holes-in-arrays-3ac5fcbcd1c){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Setting the Length of an Array


---

## Content

Have you ever wondered what happens if you manually change the length of an array?

Given the array:

```javascript
let a = ["one", "two", "three"];
```

You can manually set the length of the array to truncate or extend it. To truncate:

```javascript
a.length = 2;
// a = ["one", "two"]
```

Now, to extend the truncated array returned from the above:

```javascript
a.length = 4;
// a = [
//   "one", 
//   "two", 
//   <2 empty items>
// ]
```

Extending an array without adding values would create empty item slots, also called *holes*. An array with *holes* is also referred to as a *sparse* array.

> 💡 Check out the *Learn More* section for more information about *sparse* arrays and *holes*.

Finally, to truncate to zero:

```javascript
a.length = 0;
// a = []
```


---

## Practice

Complete the following snippet:

```javascript
let arr = [1,2,3];

arr.??? = 2; 
// arr = [1,2]

arr.length = 4; 
//arr = ???
```

- length
- `[1, 2, <1 empty item>, <1 empty item>]`
- size
- `[1, 2, undefined, undefined]`


---

## Revision

Complete the following snippet:

```javascript
let names = ["John","Mary","Tom"];

names.length = 4;
// names = ???

names.length = 0;
// names = ???
```

- `["John", "Mary", "Tom",  <1 empty item>]`
- `[ ]`
- `[undefined,undefined,undefined, undefined]`
- `["John","Mary","Tom"]`
 
