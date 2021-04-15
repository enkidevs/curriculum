---
author: nem035
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

# JavaScript Basics - Part 1


---

## Content

Like most programming languages, JavaScript has a number of syntax rules that it must adhere to.

### Variables

Variables are the essential building blocks of programs. They are used to store a value and are given a name. 

Declaring a variable in JavaScript can be done in 3 ways.

The first is using the `let` keyword:

```javascript
let firstName = "Enki";
```

Which allows us to also change what the variable points to, if needed:

```javascript
let firstName = "Enki";
firstName = "Changed"; // this works
```

We can also declare a variable using `const`, but in this case we cannot change what it points to:

```javascript
const firstName = "Enki";
firstName = "Changed"; // Error!
```

The final (and the oldest) way of declaring a variable in JavaScript is using `var`:

```javascript
var firstName = "Enki";
firstName = "Changed"; // this works
```

We'll learn more about the differences between `let`, `const`, and `var` later on.

### Semicolon

Statements in JavaScript end in a `;`. Based on the ECMAScript[1] rules however, adding a `;` isn't actually required (although it is common practice):

```javascript
let firstName = "Enki";
//                    ^
```

Omitting a semicolon in certain situations can cause problems. JavaScript has a feature called Automatic Semicolon Insertion (ASI) which means that, if you omit a semicolon, JavaScript will automatically add it where it thinks it should go. 

This can sometimes lead to unexpected results[2]. Thus, it's usually recommended to insert the `;` yourself, or use a tool such as [Prettier](https://prettier.io) to do it for you.


---

## Practice

Which snippet will throw an error?

```js
// Option A
let answer = 42;
answer = 'life';
```

```js
// Option B
const answer = 42;
answer = 'life';
```

```js
// Option C
var answer = 42;
answer = 'life';
```

???

- Option B
- Option A
- Option C
- None of these


---

## Revision

Are semicolons required in JavaScript?

???

- No
- Yes
- Sometimes


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
 
