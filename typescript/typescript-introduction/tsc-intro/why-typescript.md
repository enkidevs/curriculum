---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [TypeScript is one of the most loved
    languages](https://insights.stackoverflow.com/survey/2019#most-loved-dreaded-and-wanted){website}
  - >-
    [TypeScript is getting more popular every
    year](https://2019.stateofjs.com/javascript-flavors/typescript/){website}
  - >-
    [Use TypeScript in
    VSCode](https://code.visualstudio.com/Docs/languages/typescript){documentation}
  - >-
    [What is the difference between statically typed and dynamically typed
    languages?](https://stackoverflow.com/questions/1517582/what-is-the-difference-between-statically-typed-and-dynamically-typed-languages){discussion}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Why TypeScript?

---

## Content

The main feature, as its name suggests, is that it allows the use of *types*.

### Structural types

TypeScript checks your code by making sure you use the same data shapes wherever you said you would.

For example, if you tell TypeScript that a variable is going to hold a number and you try to put text into it, TypeScript will give you an error.

This is useful because making sure that the same data shapes are used throughout the code can help avoid bugs. It makes the code consistent, and less prone to mistakes.

### Static types

One way to think of TypeScript is as a **spellchecker for JavaScript**.

TypeScript checks your code **statically**, by looking at it *without running it*. This can speed up development because you can catch problems early on[1].

Your editor can integrate with TypeScript and display any problems in the code as you're writing it. This means you write safer code from the start.

### Modern, cross-platform JavaScript

Since TypeScript is a standalone layer on top of JavaScript, it allows us to continuously use the latest ECMAScript features, even before they become fully supported in JavaScript[2].

---

## Practice

TypeScript requires your code to run and produce an output before it can check for types.

???

- False
- True

---

## Revision

TypeScript compares two types based on their ???

- shape
- name
- quack
- location

---

## Footnotes

[1: JavaScript has Dynamic Types]
Unlike TypeScript, the types in JavaScript are dynamically determined later, when the JavaScript program runs. This means that we can't know if we have type errors until we run the code.

JavaScript is also more lenient than TypeScript and will rarely complain about type errors.

[2: How JavaScript and TypeScript get features]
Both TypeScript and JavaScript are built based on a specification of rules called [ECMAScript](https://en.wikipedia.org/wiki/ECMAScript).

This allows TypeScript to independently include the latest features as soon as they become part of ECMAScript, no matter if JavaScript began to include them.
