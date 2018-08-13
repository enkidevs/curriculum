---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.javascript-syntax.2: 10
  javascript.evaluate-expressions.3: 10
  javascript.evaluate-expressions.10: 10
  javascript.evaluate-expressions.5: 10
  javascript.evaluate-expressions.4: 10

tags:
  - introduction

links:
  - '[Mozilla Developer Network](https://developer.mozilla.org/en/docs/Web/JavaScript/Equality_comparisons_and_sameness){website}'

aspects:
  - introduction


---
# Truthy Falsy Gotchas

---
## Content

You should be aware that JavaScript has a complex set of rules that contain a few gotchas about how primitive values are compared that can lead to some unexpected comparisons.

For example:

```javascript
false == "0" //true
false == "" //true
```

### Null

Null is also one to beware of as behaves strangely:

```javascript
null == false
//false
```

`null` and `undefined` are special and not equal to anything but themselves.

..And there are many more of these strange cases so watch out!

---
## Practice

What will the following snippet evaluate to?

```javascript
null == undefined
// ???
```

* false
* true
* error

---
## Revision

What will the following snippet evaluate to?

```javascript
null == false
// ???
```

* false
* true
 
