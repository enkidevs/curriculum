# Loops - Part 1
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  js.control-flow.3: 10
  js.control-flow.4: 10

tags:
  - introduction
  - workout

---
## Content

JavaScript supports the standard loop constructs you have probably come across in other languages:

**for Loop**

```
//0 to 9:
for (var i = 0; i < 10; i++) {
	console.log(i);
}
```
We can also count backwards from 9 to 0 by modifying the last parameter:
```
//9 to 0
for (var i = 9; i >-1; i--) {
	console.log(i);
}
```

**while Loops**

The *while* loop continues to run as long as the expression in brackets is true.

Note that the loop will never run if the expression is never true:
```
//0 to 9
var i = 0;

while (i < 10) {
 console.log(i)
  i++;
}
```

**do while**

*do while* loops are similar to while loops but have the important difference that they will always run at least once before the condition is checked:
```
var i =0;

do {
   console.log(i);
   i++;
} while (i < 10);
```

---
## Practice

Complete the syntax of the following `do/while` loop such that `i` will be `10` at the end of it:
```
var i = 0;
??? {
  i++;
} ??? (i < ???)
```
*`do`
*`while`
*`10`
*`if`
*`else`
*`9`
*`for`

---
## Revision

Complete the following `for` loop such that it makes sense:
```
??? (??? i = 0; i < 10; ???) {
   console.log(i);
}
```
*`for`
*`var`
*`i++`
*`while`
*`do`
*`i--`
