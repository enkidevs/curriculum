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

# Basics II


---

## Content

### Identifier naming rules

When naming any function, property or variable, the first character must be a letter, $ sign or underscore:

```javascript
let name = "Enki"; // valid
let $taxRate = 8.25; // valid
let _id = 23; // valid
let 2Company = "Enki"; // not valid
```

### Semicolon

Statements in JavaScript end in a `;`. Based on the ECMAScript[1] rules, however, adding a `;` isn't required (although it is common practice):

```javascript
let firstName = "Enki";
//                    ^
```

Omitting a semicolon in certain situations can cause problems. So JavaScript has a feature called Automatic Semicolon Insertion (ASI) which means, if you omit a semicolon, JavaScript will automatically add it where it thinks it should go. [2]


---

## Practice

Are semicolons required in JavaScript?

???

- No
- Yes
- Sometimes

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

---

## Footnotes

[1: ECMAScript]
ECMAScript is the specification defining the rules of JavaScript. The features of JavaScript are implemented based on these specifications. 

[2: ASI]
JavaScript ASI will sometimes assume a statement ends where it might not be intended.

For example, the code below:

```js
x 
++ 
y
```

is understod as:

```js
x;
++y;
```

and not as:

```js
x++;
y
```
 
