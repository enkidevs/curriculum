---
author: alexjmackey
levels:
  - beginner
type: normal
category: must-know
inAlgoPool: false
tags:
  - es6
  - memory
links:
  - >-
    [MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Statements/const){website}
aspects:
  - introduction
---

# Const (Part 2)


---

## Content

Assigning a `const` to another variable and then changing the source variable will not change the value of the `const`:

```javascript
var x = 1;
const y = x;
x = 5;
console.log(y); //still 1
```

Additionally note that modifying a property of an object referenced by a constant will *not* throw an error and the property will be changed.

### const and objects

Objects can also be declared as `const`.

```javascript
const p = {first: "john", last: "smith"};

//below will cause errors:
p = 5;
p = {first: "bob", last: "smith"};
```

It is important to note however that the values of the object can be modified so the below is valid:

```javascript
p.first = "bob"; //valid
```

If you don’t want anyone to be able modify the object at all be sure to use `Object.freeze`[1] function.


---

## Practice

Fill in the gaps of the following code such that the output of the log statements make sense:

```javascript
const ??? = {
  pi: 3.14,
  e: 2.71
}

special.e = 2.718
special.??? = 3.141

console.log(special.???)
// 2.718
console.log(special.???)
// 3.14
console.log(???)
// 3.141
```

* special
* piExtended
* e
* pi
* special.piExtended
* special.pi
* special.e


---

## Revision

What will happen when running this code?

```javascript
const foo = {
  bar: 'baz'
}
foo.bar = 'enki'
console.log(foo.bar)
```

???

* will log 'enki'
* will log 'baz'
* will raise an error
* will log `null`


---

## Footnotes

[1:`Object.freeze`]
For more information on *Object.freeze* see (MDN)
[https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Object/freeze]

