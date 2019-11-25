---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[Avoiding object mutations](https://egghead.io/lessons/javascript-redux-avoiding-object-mutations-with-object-assign-and-spread){website}'

aspects:
  - deep

---

# Avoid object mutations

---
## Content

A **pure** function that returns a new object with the needed modifications can easily be implemented in **Redux**. However, if other properties are added later on to the object, you might need to update several pieces of your code.

To avoid this, the `Object.assign()` method can be used because it returns a new object with all enumerable properties of the *source* object:

```jsx
const target = { a: 1, b: 2 };
const source = { b: 3, c: 4 };

const returnedTarget = Object.assign(
  target,
  source
);

console.log(target);
// { a: 1, b: 3, c: 4 }

console.log(returnedTarget);
// { a: 1, b: 3, c: 4 }
```

This method is used to create a new object by copying the properties from the source object to the target object. This is useful for Redux as the method returns a new object, which keeps in line with creating **pure** reducers. Within a reducer, the target object is the one on which we assign properties. Because we want to keep our reducer **pure** (avoid mutation) we will pass an empty object `{ }` as the starting target. The source object contains the properties that are going to be copied to the target, and we can even add new properties:

```javascript
return Object.assign({}, myObj, {
  myProperty: newValue
});
```
Note that if there are two objects that have different values for the same property, the rightmost object wins. Looking at our example, this means that if `myObj` has the `myProperty: oldValue` property it will be replaced by `myProperty: newValue`.

Another approach to this problem is to use the new **spread operator**(`...`):

```javascript
return {
  ...myObj,
  myProperty: newValue };
```

---
## Practice

What method can be used to create a new object, but with additional properties in a **pure** fashion:

```jsx
return ???.???({}, myObj, {
  myProperty: newValue
});

```

* `Object`
* `assign`
* `...`
* `clone`
* `add`
* `myObject`

---
## Revision

What method can be used to create a new object, but with additional properties in a **pure** fashion:

```jsx
return ???.???({}, myObj, {
  myProperty: newValue
});

```

* `Object`
* `assign`
* `...`
* `clone`
* `add`
* `myObject`


