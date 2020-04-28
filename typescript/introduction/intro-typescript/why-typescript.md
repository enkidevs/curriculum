---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '(TypeScript is one of the most loved languages)[https://insights.stackoverflow.com/survey/2019#most-loved-dreaded-and-wanted]{website}'
  - '(TypeScript is getting more popular every year)[https://2019.stateofjs.com/javascript-flavors/typescript/]{website}'
  - '(What is the difference between statically typed and dynamically typed languages?)[https://stackoverflow.com/questions/1517582/what-is-the-difference-between-statically-typed-and-dynamically-typed-languages]{discussion}'

---

# Why TypeScript?

---
## Content

The main feature, as its name suggests, is that it allows the use of *types*.

### Structural types

TypeScript checks your code by making sure you use the same data shapes wherever you said you would.

If you tell TypeScript that a variable `totalPoints` is going to be a number, it will makes sure that any other place in the code that is using `totalPoints` isn't breaking any rules for the `number` type. For example, if you try to use `totalPoints` as if it contained text instead of a number, TypeScript will tell you.

This is useful because making sure that the same data shapes are used throughout the code can help avoid bugs. It makes the code consistent, and less prone to typos.

### Static types

One way to think of TypeScript is as a **spellchecker for JavaScript**.

TypeScript checks your code *statically*, by looking at it *without running it*[1]. This can speed up development because you can catch problems early on.

Your editor can integrate with TypeScript and display any problems in the code as you're writing it. This means you write safer code from the start.

### Modern, cross-platform JavaScript

Since TypeScript is another layer on top of JavaScript, it allows us to continuously use the latest JavaScript features, even before they become fully supported in JavaScript[2].

Because it has its own environment, TypeScript enables us to write the latest JavaScript code and handles the conversion for old platforms behind the scenes. For example, this means that you can write modern TypeScript code that can still run on old web browser that might not support modern features.

---
## Practice

TypeScript requires your code to run and produce an output before it can check for types.

???

* False
* True

---
## Revision

TypeScript compares types based on ???

* shape
* quacks
* name
* age

---
## Footnotes
[1: JavaScript has a Duck typing system]
Unlike TypeScript, the types in JavaScript are dynamically determined when the JavaScript program runs. After running the code, the JavaScript environment figures out the type by checking for presence of some pre-defined features in a value to determine its type.

The name "duck typing" comes from a playful metaphor for its meaning:

> If it looks like a duck, swims like a duck, and quacks like a duck, then it probably is a duck.

[2: How JavaScript and TypeScript get features]
Both TypeScript and JavaScript are built based on a specification of rules called [ECMAScript](https://en.wikipedia.org/wiki/ECMAScript). This allows TypeScript to independently include the latest features even before JavaScript includes them.
