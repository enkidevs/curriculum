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

# Binary and octal notation

---
## Content

Since ES6 you can use **binary** and **octal** notation as well as hexadecimal:

```javascript
0x1 // hex '1'
0xff // hex '255'
0b1 // bin '1'
0b11111111 // bin '255'
0o1 // oct '1'
0o377 // oct '255'
```

You can use the method `.toString(radix)` to convert numbers to hex/bin/oct:

```javascript
(255).toString(16); // 'ff' in hex
(1).toString(2); // '1' in bin
(10).toString(8); // '12' in oct
```

---
## Practice

How would you write the number `2` in binary notation?

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
