# Check if a function exists
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

standard: 
  js.write-expressions: 10

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1042138/javascript-check-if-function-exists){website}

---
## Content

There are certain scenarios where scripts are shared between different parts of a website. This can result in calling functions that *do not exist*. 

Check if a `function` exists beforehand:
```javascript
if (typeof myFunction === "function") { 
    // safe to use the function
    myFunction();
}

```

---
## Practice

When can a scenario occur where calling functions do not exist? ???

* When scripts are shared between different parts of a website.
* When functions haven't been declared properly.
* When scripts haven't been passed or imported properly.

---
## Revision

Complete the `if` statement to check if a function exists:
```javascript
if(??? myFunction === ???){
  myFunction();
}
```
*typeof
*”function”
*function
*!
*undefined