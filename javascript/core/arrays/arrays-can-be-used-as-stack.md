# Arrays can be used as stack
author: Bruno

levels:

  - beginner

type: normal

category: tip

standards:
  js.data-types-structures.2: 10
  js.data-types-structures.3: 10

tags:

  - introduction
  - workout

links:

  - '[stackoverflow](http://stackoverflow.com/questions/1590247){discussion}'

---
## Content

Using the following array:
```
var stack = [];
```
We can `push` items to the stack:
```
stack.push(1);
stack.push(2);
```
Then, try using `stack.pop()`:
```
console.log(stack.pop())
// prints 2
console.log(stack.pop())
// prints 1
```

---
## Practice

Complete the code snippet:
```javascript
var s = [1,2];
s.??? ; // s = [1,2,3]
s.??? ; // s = [1,2,3,4]
s.??? ; // s = [1,2,3]
```
*push(3)
*push(4)
*pop()
*pop(4)
*pop(3)

---
## Revision

Complete the code snippet:
```javascript
var s = [1,2];
s.??? ; // s = [1]
s.??? ; // s = [1,2]
s.??? ; // s = [1,2,4]
```
*pop()
*push(2)
*push(4)
*pop(2)
*pop(4)
