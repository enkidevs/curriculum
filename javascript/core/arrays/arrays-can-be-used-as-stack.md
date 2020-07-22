---
author: Bruno
type: normal
category: tip
links:
  - '[stackoverflow](http://stackoverflow.com/questions/1590247){discussion}'
---

# Arrays Can Be Used as Stack


---

## Content

Using the following array:

```js
let stack = [];
```

We can `push` items to the stack:

```js
stack.push(1);
stack.push(2);
```

Then, try using `stack.pop()`:

```js
console.log(stack.pop())
// 2
console.log(stack.pop())
// 1
```


---

## Practice

Complete the code snippet:

```javascript
let s = [1,2];
s.??? ; // s = [1,2,3]
s.??? ; // s = [1,2,3,4]
s.??? ; // s = [1,2,3]
```

- push(3)
- push(4)
- pop()
- pop(4)
- pop(3)


---

## Revision

Complete the code snippet:

```javascript
let s = [1,2];
s.??? ; // s = [1]
s.??? ; // s = [1,2]
s.??? ; // s = [1,2,4]
```

- pop()
- push(2)
- push(4)
- pop(2)
- pop(4)
