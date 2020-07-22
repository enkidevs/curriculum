---
author: alexjmackey
type: normal
category: must-know
inAlgoPool: false
tags:
  - introduction
links:
  - >-
    [Mozilla Developer
    Network](https://developer.mozilla.org/en/docs/Web/JavaScript/Equality_comparisons_and_sameness){website}
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

`null` and `undefined` are special and equal only to themselves and each other.

... And there are many more of these strange cases so watch out!


---

## Practice

What will the following snippet evaluate to?

```javascript
null == undefined
// ???
```

- true
- false
- error


---

## Revision

What will the following snippet evaluate to?

```javascript
null == false
// ???
```

- false
- true
