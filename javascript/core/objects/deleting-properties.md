# Deleting properties
author: pawel

levels:

  - basic

type: normal

category: how to

notes: Hope it's not too basics?

standards:
  js.data-types-structures.3: 10
  js.data-types-structures.4: 10

links:

  - "[stackoverflow.com](http://stackoverflow.com/questions/208105/how-to-remove-a-property-from-a-javascript-object){website}"

---
## Content

Setting the property to `null` or `undefined` only removes the value associated with given property. It does not remove the key.

```
var obj = { one: 1 }
```

Setting to `undefined`:

```
obj.one = undefined;
console.log(obj); // { one: undefined }
```
Setting to `null`:
```
obj.one = null;
console.log(obj); // { one: null }
```
To delete:

```
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

*undefined
*delete test.prop2
*null
*delete prop2

---
## Revision

What is the output of the following code snippet?

```javascript
var obj = { one: 1 }
obj.one = undefined;
console.log(obj);
// ???

```

*`{ one: undefined }`
*`{ one: null }`
*`{ }`
