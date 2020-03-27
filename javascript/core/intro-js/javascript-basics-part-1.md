---
author: alexjmackey

type: normal

category: must-know

aspects:
  - introduction


---
# JavaScript Basics - Part 1

---
## Content

Like most programming languages, JavaScript has a number of syntax rules that it must adhere to.

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

Tthere are a number of reserved words in JavaScript that you cannot use to as names for your functions and variables (e.g. `var`, `let`, `new`).

### Identifier naming rules

When naming any function, property or variable, the first character must be a letter, a $ sign or an underscore.

After the first character, you are free to use numbers, letters, $ signs or underscores.

```javascript
let name = "Enki"; // valid
let $taxRate = 8.25; // valid
let _id = 23; // valid
let 2Company = "Enki"; // not valid
```

### Comments

Comments can be created in 2 ways in JavaScript.

As a single line comment:

```js
// I am a single line comment
```

You can also add single line comments to the same line as other code:

```javascript
let company = "enki"; // define company
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
let 777jackpot = "jackpot";
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
 
