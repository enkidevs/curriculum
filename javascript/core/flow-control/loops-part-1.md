---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.control-flow.0: 10
  javascript.control-flow.3: 10
  javascript.control-flow.4: 10

tags:

  - introduction


aspects:
  - introduction


---

# Loops - Part 1

---
## Content

JavaScript supports the standard loop constructs you have probably seen in other languages:

**for Loop**

```javascript
// 0 to 9:
for (var i = 0; i < 10; i++) {
  console.log(i);
}
```

We can also count backwards from 9 to 0 by modifying the last parameter:

```javascript
// 9 to 0
for (var i = 9; i >-1; i--) {
  console.log(i);
}
```

**while Loops**

The *while* loop continues to run as long as the expression in brackets is true:

```js
// 0 to 9
var i = 0;

while (i < 10) {
  console.log(i);
  i++;
}
```

**Note:** the loop will never run if the expression is never true:

```javascript
// 0 to 9
var i = 10;

// this loop will never run because i = 10
// and thus the condition i < 10 means
// 10 < 10, which is never true
while (i < 10) {
  console.log(i);
  i++;
}
```

**do while**

*do while* loops are similar to while loops but have the important difference that they will always run at least once before the condition is checked:

```javascript
// 5 to 10
var i = 5;

do {
  console.log(i);
  i++;
} while (i < 10);
```

---
## Practice

Complete the syntax of the following `do/while` loop such that `i` will be `10` at the end of it:

```javascript
var i = 0;
??? {
  i++;
} ??? (i < ???)
```

* `do`
* `while`
* `10`
* `if`
* `else`
* `9`
* `for`

---
## Revision

Complete the following `for` loop such that it's syntactically correct and runs 10 iterations:

```javascript
??? (??? i = 0; i < 10; ???) {
  console.log(i);
}
```

* `for`
* `var`
* `i++`
* `while`
* `do`
* `i--`
 
