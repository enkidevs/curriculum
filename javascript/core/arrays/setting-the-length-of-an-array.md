---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

standards:
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.4: 10

tags:
  - introduction
  - obscura

aspects:
  - introduction
  - obscura

---

# Setting the length of an array

---
## Content

Have you ever wondered what happens if you manually change the length of an array?

Given the array:

```
var a = ["one", "two", "three"];
```
You can manually set the length of the array to truncate or extend it. To truncate:
```
a.length = 2;
// a = ["one", "two"]

```

Now, to extend the truncated array returned from the above:
```
a.length = 4;
// a = ["one", "two", undefined,
//               undefined]
```
Finally, to truncate to zero:

```
a.length = 0;
// a = []

```

---
## Practice

Complete the following snippet:
```javascript
var arr = [1,2,3];
arr.??? = 2; // arr = [1,2]
arr.length = 4; //arr = ???
```

* length
* [1,2,undefined,undefined]
* size
* [1,2,undefined,undefined,undefined]

---
## Revision

Complete the following snippet:
```javascript
var names = ["John","Mary","Tom"];
names.length = 4;
// names = ???
names.length = 0;
// names = ???
```

* ["John","Mary","Tom", undefined]
* [ ]
* [undefined,undefined,undefined, undefined]
* ["John","Mary","Tom"]
 
 