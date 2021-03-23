---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
  - workout
  - deep
links:
  - >-
    [spin.atomicobject.com](http://spin.atomicobject.com/2015/09/25/debug-node-js/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The built-in Node debugger


---

## Content

Use the built-in Node debugger by running your app in **debug mode**:

```bash
node debug [your app]
```

Place a `debugger` statement on the line of interest, for example:

```js
for(var i=0; i<3; i++){
  debugger;
  console.log("hello " + i);
}
console.log("end");
```

Running this in the debugger will **break** at the relevant line.

Step through your code using these debug commands:

- **continue** – `cont`, `c`
- **step** – `next`, `n`
- **step in** – `step`, `s`
- **step out** – `out`, `o`


---

## Practice

When running the following code snippet in the debugger, which line of code will the debugger break at?

```javascript
for(var i=0; i<10; i++) {      // line 0
   debugger;                   // line 1
   console.log("hello " + i);  // line 2
}                              // line 3
console.log("end");            // line 4
```

???

- Line 1
- Line 0
- Line 2
- Line 3
- Line 4


---

## Revision

How can you run `enki` app in *debug* mode?

```bash
??? ??? enki
```

- node
- debug
- debugger
- npm
