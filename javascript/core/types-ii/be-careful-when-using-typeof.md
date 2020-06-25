---
author: Bruno

levels:

  - beginner

type: normal

category: tip

standards:

  javascript.evaluate-expressions.10: 10

tags:

  - introduction

aspects:
  - introduction
  - workout


---

# Be careful when using `typeof`.

---
## Content

Certain data types are objects yet we refer to them as their more specific type, for example arrays
are objects but they are specialized objects so we call them an array and expect them to behave as an array.
`typeof` returns "object" for all objects, and nothing more specific.

Examples:

```
typeof null // "object"
typeof new Date() // "object"
typeof new Array() // "object"
```

---
## Practice

What does the following return? ???

```javascript
typeof new Date();
```


* An object
* Null
* A date
* Undefined

---
## Revision

`typeof(new Array())`  returns ??? and nothing more specific.


* object
* null
* var
* Array()
 
