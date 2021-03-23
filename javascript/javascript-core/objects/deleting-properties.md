---
author: pawel
type: normal
category: how-to
tags:
  - introduction
links:
  - >-
    [How do I remove a property from a JavaScript object?](https://stackoverflow.com/questions/208105/how-do-i-remove-a-property-from-a-javascript-object){website}
notes: Hope it's not too basics?
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deleting Properties


---

## Content

Setting the property to `null` or `undefined` only replaces the value associated with given property. It does not remove the key.

```javascript
var obj = { one: 1 }
```

Setting to `undefined`:

```javascript
obj.one = undefined;
console.log(obj); // { one: undefined }
```

Setting to `null`:

```javascript
obj.one = null;
console.log(obj); // { one: null }
```

To delete:

```javascript
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
// remove prop2
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
 
