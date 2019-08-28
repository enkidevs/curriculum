---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.javascript-syntax.1: 10
  javascript.javascript-syntax.2: 10

tags:
  - introduction

aspects:
  - introduction


---
# JavaScript Basics - Part 1

---
## Content

Like most programming languages, JavaScript has a number of rules its code must adhere to.

### Case Sensitivity

Everything in JavaScript is case sensitive.

```js
var password;
// Is not the same as
var pasSword;
// or
var PASSWORD;
```

### Keywords

Like most languages, there are a number of reserved words in JavaScript that you cannot use to name your functions and variables (e.g. `var`, `let`, `new`).

### Identifier naming rules

When naming any function, property or variable, the first character must be a letter, $ sign or underscore.

After the first character, you are free to use numbers, letters, dollar signs or underscores.

```javascript
var name = "Enki"; // valid
var $taxRate = 8.25; // valid
var _id = 23; // valid
var 2Company = "Enki"; // not valid
```

### Comments

Comments can be created in 2 ways in JavaScript.

As a single line comment:

```js
// I am a single line comment
```

You can also add single line comments to the same line as other code:

```javascript
var company="enki"; // define company
```

Or if you have more text you can use a block comment:
```javascript
/*
I am a block comment
*/
```

---
## Practice

What syntax is used in *JavaScript* for **single line** comments?

???

* //
* `/* */`
* `#`

---
## Revision

Is the following line of code **valid**?

```javascript
var 777jackpot = "jackpot";
// line is ???
```

* not valid
* valid

---
## Quiz
### which of the following is a valid comment?

```javascript
(1. // first comment
(2. <!-- second comment
(3. /* third comment */
```

 ???

* 1, 2 & 3
* 1
* 1 & 3
* 2
 
