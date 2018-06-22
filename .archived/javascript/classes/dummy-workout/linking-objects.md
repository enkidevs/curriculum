---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [github.com](https://github.com/getify/You-Dont-Know-JS/blob/master/this%20&%20object%20prototypes/ch5.md){website}

---
# Linking objects

---
## Content

It is possible to **link objects** in several ways. 

In ES5 you can use `Object.create()` to create a **new object** and link its internal `[[Prototype]]` to a different object. For example:
```
Bar.prototype = Object.create(Foo.prototype)
```
This means that the existing default `Bar.prototype` object is discarded. 

In ES6, you can **modify** the existing `Bar.prototype` object using `Object.setPrototypeOf()`:
```
Object.setPrototypeOf
     (Bar.prototype, Foo.prototype);
```
It is also possible to use:
```
Bar.prototype = new Foo();
```
This creates a new object using the `Foo()` **constructor call**.  This can have unintended side effects from whatever is in the `Foo()` function.

The following **does not work**:
```
Bar.prototype = Foo.prototype;
```
This just makes `Bar.prototype` a reference to `Foo.prototype`.

---
## Practice

Link `enki`'s internal `[[Prototype]]` to `oldEnki`' (assume **ES5***):
```javascript
enki.??? = 
 Object.???(oldEnki.prototype);
```
* prototype
* create
* props
* assign
* setPrototypeOf

---
## Revision

Link `enki`'s internal `[[Prototype]]` to `oldEnki`' (assume **ES5***):
```javascript
enki.??? = 
 Object.???(oldEnki.prototype);
```
* prototype
* create
* props
* assign
* setPrototypeOf