---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  - js.evaluate-expressions.10: 10

tags:

  - introduction

  - workout




---

# Types - Introduction

---
## Content

JavaScript has the following primitive types:

- undefined
- null
- boolean
- number
- string
- symbol (new to EcmaScript 6)

There are also a few special types - Array, Date, RegExp - that are types of Object but included out of the box.

Unlike some other languages you do not need to tell JavaScript what type a variable is when declaring it as the interpreter will work it out for you:
```
var name = "john smith";
```

You can also change a variable's type at any time:
```
var x=1; //number
x="blah"; //reassign to string
```

**typeof**

You can check the type of value by using the typeof operator e.g.
```
var company="enki";
typeof company; //string
```

---
## Revision

Which one of the following is **not** a primitive type:

???


* RegExp
* Symbol
* String
* Number

