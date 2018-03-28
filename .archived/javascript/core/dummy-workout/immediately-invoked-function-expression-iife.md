---
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: tip

links:

  - >-
    [benalman.com](http://benalman.com/news/2010/11/immediately-invoked-function-expression/){website}

  - '[Greg Franko](http://gregfranko.com/blog/i-love-my-iife/){website}'

---
# Immediately-Invoked Function Expression (IIFE)

---
## Content

A common pattern in JavaScript is the Immediately-Invoked Function Expression or IIFE.

IIFE's are nameless or anonymous functions that are executed immediately.

They have the following structure:

```
(function(){
   ...
})();
```

The main benefit of IIFE's is restricting access to variables contained within.

When a function runs it creates its own execution context and by creating a function and running it immediately we ensure that the variables contained are inaccessible to external code.

IIFE's are a very useful approach for organising code and frequently used in libraries and frameworks.

---
## Revision

The syntax for declaring an IIFE function is:
```
(???{
 // code
})???;
```
* function()
* ()
* functionName()
* {}
* apply