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
# Types - Introduction

---
## Content

JavaScript has the following primitive types:

- undefined
- null
- boolean
- number
- string
- symbol (new to ECMAScript 6)

There are also a few special types - `Array`, `Date`, `RegExp` - that are types of `Object` but included out of the box.

Unlike some other languages you do not need to tell JavaScript what type a variable is when declaring it as the interpreter will work it out for you:

```javascript
var name = "john smith";
```

Javascript's typing is dynamic which means you can also change a variable's type at any time:

```javascript
var x=1; //number
x="blah"; //reassigns to string
```

### typeof

You can check the type of value by using the typeof operator e.g.

```javascript
var company="enki";
typeof company; //string
```

---
## Practice

Can you change a variable's type in JavaScript?

???

* yes
* no
* only if you declare it again

---
## Revision

Which one of the following is **not** a primitive type:

???

* RegExp
* Symbol
* String
* Number
 
