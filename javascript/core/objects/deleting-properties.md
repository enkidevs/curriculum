---
author: pawel
type: normal
category: how to
tags:
  - introduction
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/208105/how-to-remove-a-property-from-a-javascript-object){website}
notes: Hope it's not too basics?
---

# Deleting properties


---

## Content

Setting the property to `null` or `undefined` only removes the value associated with given property. It does not remove the key.

```plain-text
var obj = { one: 1 }
```

Setting to `undefined`:

```plain-text
obj.one = undefined;
console.log(obj); // { one: undefined }
```

Setting to `null`:

```plain-text
obj.one = null;
console.log(obj); // { one: null }
```

To delete:

```plain-text
delete obj.one;
console.log(obj); // { }

```

Using the `delete` operator returns `true` for all cases except when the property is an own non-configurable property, in which case, `false` is returned in non-strict mode.


---

## Practice

Complete the code snippet:

```javascript
var test = {
  prop1: 1,
  prop2: 2
}
// set prop1 to undefined
test.prop1 = ???;
//remove prop2
??? ;
```

- undefined
- delete test.prop2
- null
- delete prop2


---

## Revision

What is the output of the following code snippet?

```javascript
var obj = { one: 1 }
obj.one = undefined;
console.log(obj);
// ???

```

- `{ one: undefined }`
- `{ one: null }`
- `{ }`
