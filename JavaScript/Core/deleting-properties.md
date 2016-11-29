# Deleting properties
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

notes: Hope it's not too basics?

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/208105/how-to-remove-a-property-from-a-javascript-object){website}

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

Show the output:
```javascript
var obj = { one: 1 }
obj.one = undefined;
console.log(obj);
// ???

```

*`{ one: undefined }`
*`{ one: null }`
*`{ }`