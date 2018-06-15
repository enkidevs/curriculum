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


links:

  - '[Type detection tutorial](http://javascript.info/tutorial/type-detection){tutorial}'


---

# Be careful when using `typeof`.

---
## Content

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
 
