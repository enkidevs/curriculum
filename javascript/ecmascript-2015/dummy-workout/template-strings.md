---
author: nene
levels:
  - basic
  - advanced
  - medium
type: normal
category: how-to
tags:
  - template strings
links:
  - >-
    [MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/template_strings){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Template Strings


---

## Content

String templating lets you evaluate JavaScript expressions inside a string expression when they are wrapped in `${}`.

For instance:

```js
let a = 10; 
let b = 10;
console.log(`JS: created ${a+b} years ago`);
//=> JS: created 20 years ago
```

Complex expressions (e.g. involving functions) are also supported:

```js
function fn(){
  return "I am the " + 
    "result. Rarr";
}
console.log(`foo ${fn()} bar`);
//=> foo I am the result. Rarr bar.
```


---

## Practice

Complete the code snippet using template strings:

```js
function pr() {
   return "to practice my";
} 

console.log('Time ???{???()} Python!'); 
// Time to practice my Python!
```

- $
- pr
- £
- &
- fn
- func


---

## Revision

Using string templating, print the value of `a`:

```javascript
let a = 'enki';
console.log(`
  cool thing -> ???{???}
`);
```

- $
- a
- template
- %
- (
- {
- )
- }
- string
- enki
 
