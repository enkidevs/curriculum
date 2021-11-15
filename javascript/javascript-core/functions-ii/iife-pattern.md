---
author: rosielowther
type: normal
category: best-practice
tags:
  - introduction
  - workout
links:
  - >-
    [Immediately-Invoked Function Expression (IIFE)](http://benalman.com/news/2010/11/immediately-invoked-function-expression/){website}
  - >-
    [What is the purpose of a self executing function in javascript?](http://stackoverflow.com/questions/592396/what-is-the-purpose-of-a-self-executing-function-in-javascript){website}
  - >-
    [Self-Executing Anonymous Functions](http://markdalgleish.com/2011/03/self-executing-anonymous-functions/){website}
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

# IIFE Pattern


---

## Content

The **Immediately Invoked Function Expression pattern** (**IIFE** or "iffy") is a function expression (either named or anonymous) that is immediately called. 

The syntax is[1]:

```javascript
(function(){
    // do something
})();
```

It is an alternative to:

```plain-text
// do something
```

You can use self-executing functions to maintain a **clean scope**, as variables declared within the function are not available outside it.

Two possible uses are:

- To wrap the whole code in an IIFE and pass in the `window` object. This could be given an alias of `global`. Global public properties could then be made accessible.

- To produce an alias for `jQuery` to `$` to prevent conflicts with other frameworks.

For example:

```javascript
(function(global){
  function fun(){
      return "Hello World!";
  }
  global.fun = fun;
})(window); // reference to window object
```

---

## Practice

A use case of the IIFE pattern is to wrap the whole code in an IIFE and pass in the ??? object. This could be given an alias of ???. Global public properties could then be made accessible.

- `window` 
- `global` 
- `modal` 
- `new` 
- `returned`


---

## Revision

What's the syntax of an **IIFE** ?

```javascript
(??? () {
}???);
```

- `function`
- `)(`
- `{}`
- `(`
- `)`
- `name`
- `call`
 
---

## Footnotes

[1: IIFE Syntax]

IIFEs can be written in two ways:

```js
(function () {
  console.log('this works');
}());
// ^ invocation parenthesis are inside the outer parenthesis

(function () {
  console.log('so does this');
})();
// ^ invocation parenthesis are outside of the outer parenthesis
```

This code would output:

![iife-syntax](https://img.enkipro.com/8b795a7e5766af215d3ceca8b322eb19.png)

Check out this [StackOverflow thread](https://stackoverflow.com/questions/3384504/location-of-parenthesis-for-auto-executing-anonymous-javascript-functions) for more details.

In the case of arrow functions however, the placement of the `()` **does matter**.

```js
(() => {
  console.log('this does not work');
}()); // <-- ERROR
//^ invocation parenthesis are inside the outer parenthesis

(() => {
  console.log('but this works');
})();
// ^ invocation parenthesis are outside of the outer parenthesis
```

The short answer of why is that the `=>` symbol is read in a different order by JavaScript than the `function` keyword, leading it to *"wrongly"* confuse an IIFE with a a function that returns an invoked object (i.e. `() => {}()`).

See this [StackOverflow answer](https://stackoverflow.com/questions/34589488/es6-immediately-invoked-arrow-function/34589765#34589765) for a more detailed explanation.

Since both regular and arrow function IIFEs work with the `()` outside, it makes more sense to use this syntax.
