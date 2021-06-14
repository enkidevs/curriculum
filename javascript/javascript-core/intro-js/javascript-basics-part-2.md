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

Here are a couple more rules.

### Identifier naming rules

When naming any function, property or variable, the first character must be a letter, $ sign or underscore.

After the first character, you are free to use numbers, letters, dollar signs or underscores.

```javascript
let name = "Enki"; // valid
let $taxRate = 8.25; // valid
let _id = 23; // valid
let 2Company = "Enki"; // not valid
```

### Semicolon

Statements in JavaScript end in a `;`. Based on the ECMAScript[1] rules however, adding a `;` isn't actually required (although it is common practice):

```javascript
let firstName = "Enki";
//                    ^
```

Omitting a semicolon in certain situations can cause problems. JavaScript has a feature called Automatic Semicolon Insertion (ASI) which means that, if you omit a semicolon, JavaScript will automatically add it where it thinks it should go. 

This can sometimes lead to unexpected results[2]. Thus, it's usually recommended to insert the `;` yourself, or use a tool such as [Prettier](https://prettier.io) to do it for you.



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

For example, the code bellow:

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
 

