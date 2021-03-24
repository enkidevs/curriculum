---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Enhanced Object
    Literals](http://www.benmvp.com/learning-es6-enhanced-object-literals/){website}
  - >-
    [Object
    Initializer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Object_initializer){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Property Value Shorthand


---

## Content

It is very common to return an object from a function with a property the same name as a source value declared elsewhere e.g.

```javascript
function test() {
  let name = "Enki";

  return {
    name: name
  };
}
```

JavaScript provides a convenient shortcut to do this that allows you to drop the property name if you want it to be the same as the source variable:

```javascript
function test() {
  let name = "enki";

  return {
    name
  };
}

test(); // { name: "enki" }
```

**Note:** an exception will be thrown at run time if you specify a value that doesn’t exist in your return object.

```js
function test() {
  let name = "enki";

  return {
    nombre
  };
}

test(); 
// ReferenceError: nombre is not defined
```


---

## Practice

What will be logged by the following snippet:

```javascript
function bar() {
  let foo = "b";
  this.foo = "a";
  return {
    foo
  };
}
console.log(bar());
// ???
```

- `{ foo: 'b' }`
- `'b'`
- `'a'`
- `{ foo: 'a' }`
- error
- `foo`


---

## Revision

Fill in the missing gap such that the `prop` value is returned using property value shorthand:

```javascript
function foo() {
  let prop = "value";

  return {
    ???
  };
}
```

- prop
- prop: prop
- prop: this.prop
- this.prop: prop
- this.prop
- 'value'
- prop: 'value'
 
