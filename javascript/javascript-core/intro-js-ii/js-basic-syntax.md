---
author: lior-bd

category: must-know

type: normal

practiceQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap


revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap



links:


---

# Basics I

---
## Content

Here are a couple more rules.

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

Omitting a semicolon in certain situations can cause problems. So JavaScript has a feature called Automatic Semicolon Insertion (ASI) which means, if you omit a semicolon, JavaScript will automatically add it where it thinks it should go.


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
## Footnotes

[1: ECMAScript]
ECMAScript is the specification defining the rules of JavaScript. The features of JavaScript are implemented based on these specifications. 

