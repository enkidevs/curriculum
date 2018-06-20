---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  javascript.evaluate-expressions.10: 10

tags:

  - introduction

aspects:
  - introduction


---

# Types - Undefined and Null

---
## Content

**undefined**

A variable is of *undefined* type when it is created but not set to a value:
```
var company;
typeof company; //undefined
```

Note that if the **typeof** operator is used on a variable that has never been defined it will also return as undefined:

```
typeof randomName; //undefined
```

**null**

null is used to represent a deliberate absence of a value:
```
var myNullValue=null;
```

Confusingly, if you compare null and undefined you will find they are equal when using the standard equals comparison (this will convert types):

```
null  == undefined //true
```
But when using strict comparison (this does not change types) they are not equal:

```
null === undefined //false
```

---
## Practice

Not initializing a variable sets its value to ???.


* undefined
* null
* the default one

---
## Revision

What will the following statement evaluate to?
```
undefined == null
// ???
```

* true
* false
 
