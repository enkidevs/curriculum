---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - template strings

links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/template_strings){website}'

---
# Template Strings

---
## Content

String templating lets you evaluate JavaScript expressions inside a string expression when they are wrapped in `${}`.


For instance:

```
var a = 10; 
var b = 10;
console.log(`JS: created ${a+b} years ago`);
//=> JS: created 20 years ago
```

Complex expressions (e.g. involving functions) are also supported:

```
function fn(){return "I am the " + 
             "result. Rarr";}
console.log(`foo ${fn()} bar`);
//=> foo I am the result. Rarr bar.
```

---
## Practice

Complete the code snippet using template strings:

```
function pr() {
   return "to practice my";
} 

console.log('Time ???{???()} Python!'); 
// Time to practice my Python!
```
* $
* pr
* £
* &
* fn
* func

---
## Revision

Using string templating print the value of `a`:
```javascript
var a = 'enki';
console.log(`cool thing -> ???{???} `);
```

* $
* a
* template
* %
* (
* {
* )
* }
* string
* enki
 
