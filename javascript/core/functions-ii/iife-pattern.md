# IIFE pattern
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

standards:
  js.functions.4: 10
  js.functions.5: 10
  js.functions.6: 10
  js.functions.7: 10

tags:
  - introduction
  - workout

links:

  - >-
    [benalman.com](http://benalman.com/news/2010/11/immediately-invoked-function-expression/){website}

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/592396/what-is-the-purpose-of-a-self-executing-function-in-javascript){website}

  - >-
    [markdalgleish.com](http://markdalgleish.com/2011/03/self-executing-anonymous-functions/){website}

---
## Content

The **Immediately Invoked Function Expression pattern** (**IIFE** or "iffy") is a function expression (either named or anonymous) that is immediately called.

The syntax is:
```
(function(){
    // do something
}());
```
It is an alternative to:
```
// do something
```
You can use self-executing functions to maintain a **clean scope**, as variables declared within the function are not available outside it.

Two possible uses are:

* To wrap the whole code in an IIFE and pass in the `window` object. This could be given an alias of `global`. Global public properties could then be made accessible.

* To produce an alias for `jQuery` to `$` to prevent conflicts with other frameworks.

For example:

```
(function(global){
  function fun(){
      return "Hello World!";
  }
  global.fun = fun;
}(window)); // reference to window object
```

---
## Practice

A use case of the IIFE pattern is to wrap the whole code in an IIFE and pass in the ??? object. This could be given an alias of ???. Global public properties could then be made accessible.

*`window`
*`global`
*`modal`
*`new`
*`returned`

---
## Revision

What's the syntax of an **IIFE** ?

```javascript
(??? () {
}???);
```

*`function`
*`()`
*`{}`
*`(`
*`)`
*`name`
*`call`
