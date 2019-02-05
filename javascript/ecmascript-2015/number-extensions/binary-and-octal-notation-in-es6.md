---
author: rosielowther

levels:
  - basic
  - advanced
  - medium

type: normal

category: feature

tags:
  - es6
  - numbers

links:
  - '[www.2ality.com](http://www.2ality.com/2015/04/numbers-math-es6.html){website}'

aspects:
  - introduction
  - new
  - workout

---

# Binary and octal notation in ES6

---
## Content

In ES6 you can use **binary** and **octal** notation as well as hexadecimal:

```javascript
0x1 // hex '1'
0xFF // hex '255'
0b1 // bin '1'
0B11111111 // bin '255'
0o1 // oct '1'
0O377 // oct '255'
```

You can use the method `.toString(r)` to convert numbers to hex/bin/oct:

```javascript
(255).toString(16) // 'ff' in hex
(1).toString(2) // '1' in bin
(10).toString(8) // '12' in oct
```

---
## Practice

How would you write the number `2` in binary notation? (introduced in ES6)

??? ??? ???

* 0
* b
* 10
* o
* 1
* 11
* 2
* 00

---
## Revision

What method can be used to convert numbers to hex/bin/oct ?

```javascript
(3.14).???(8) // octal
```

* toString
* convert
* parse
* rebase
