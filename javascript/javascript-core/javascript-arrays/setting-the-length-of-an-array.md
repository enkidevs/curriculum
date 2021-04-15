---
author: pawel
type: normal
category: hack
tags:
  - introduction
  - obscura
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
//   undefined,
//   undefined
// ]
```

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
- `[1,2,undefined,undefined]`
- size
- `[1,2,undefined,undefined,undefined]`


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

- `["John","Mary","Tom", undefined]`
- `[ ]`
- `[undefined,undefined,undefined, undefined]`
- `["John","Mary","Tom"]`
 
