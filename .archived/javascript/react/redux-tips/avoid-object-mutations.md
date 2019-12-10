---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[egghead.io](https://egghead.io/lessons/javascript-redux-avoiding-object-mutations-with-object-assign-and-spread){website}'

aspects:
  - deep

---

# Avoid object mutations

---
## Content

A **pure** function that returns a new object with the needed modifications can easily be implemented in **Redux**. However, if other properties are added later on to the object, you might need to update several pieces of your code.

To avoid this, the `Object.assign()` method introduced in **ES6** can be used because it returns a new object with all enumerable properties of the *source* object:
```javascript
return Object.assign({}, myObj, {
  myProperty: newValue
});
```
The first argument of this function, `{ }`, is the one whose properties are going to be assigned. As we want to keep our function **pure** we pass an empty `Object`. The others represent objects whose properties are going to be copied. If there are two objects that have different values for the same property, the last one wins.

Another approach to this problem is to use the new **spread operator**(`...`) available in **Babel** stage two preset:
```javascript
return {
  ...myObj,
  myProperty: newValue };
```

---
## Practice

What **ES6** method can be used to create a new object, but with additional properties in a **pure** fashion:
```
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

What **ES6** method can be used to create a new object, but with additional properties in a **pure** fashion:
```
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


