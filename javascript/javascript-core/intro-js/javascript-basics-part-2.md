---
author: alexjmackey
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# JavaScript Basics - Part 2


---

## Content

Here are a couple more rules.

### Case Sensitivity

Everything in JavaScript is case sensitive.

```js
let password;
// Is not the same as
let pasSword;
// or
let PASSWORD;
```

### Keywords

Like most languages, there are a number of reserved words in JavaScript that you cannot use to name your functions and variables (e.g. `var`, `let`, `new`).

### Identifier naming rules

When naming any function, property or variable, the first character must be a letter, $ sign or underscore.

After the first character, you are free to use numbers, letters, dollar signs or underscores.

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
let company="enki"; // define company
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

- `//`
- `/* */`
- `#`


---

## Revision

Is the following line of code **valid**?

```javascript
let 777jackpot = "jackpot";
// line is ???
```

- not valid
- valid


---

## Quiz

### which of the following is a valid comment?


```javascript
(1. // first comment
(2. <!-- second comment
(3. /* third comment */
```

 ???

- 1, 2 & 3
- 1
- 1 & 3
- 2
 
