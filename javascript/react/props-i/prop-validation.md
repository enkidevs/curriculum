---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: best practice

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/typechecking-with-proptypes.html){website}'

parent: destructuring-arguments

aspects:
  - introduction

---

# `props` Validation

---
## Content

`JavaScript` being a loosely typed language you can experience runtime errors when you expect data of one type but receive another. *React* helps us in this by providing a feature called `propTypes`.

This helps you in validating if the data (`props`) received in components is valid compared to what you expect. If not, warnings will be displayed in the *JavaScript* console.

All validators are available through `PropTypes` which can be imported from the library `prop-types`.
```jsx
import PropTypes from 'prop-types'; // importing PropTypes

// class MyComponent extends ...

MyComponent.propTypes = {
  myArray: PropTypes.array,
  myBoolean: PropTypes.bool,
  myFunction: PropTypes.func,
  myNumber: PropTypes.number,
  myObject: PropTypes.object,
  myString: PropTypes.string,
};
```

The validations above state that the specified `props` should be **JS** primitives. By default, they are **optional** so no warnings are shown if they are not passed to the component.

 However, they can be required by appending `.isRequired` to the type:
```
MyComponent.propTypes = {
 myFunc: PropTypes.func.isRequired,
};
```

Note that `propTypes` are only checked in development mode due to performance reasons.

---
## Practice

Complete the missing validation such that the first prop is a function and the second an object:

```jsx
function Test(props) { return <p>A</p>; };
Test.propTypes = {
  myFunction: ???.???,
  myObject: PropTypes.???,
};
```


* `PropTypes`
* `func`
* `object`
* `function`
* `obj`
* `node`
* `element`
* `method`
* `Props`
* `Primitives`

---
## Revision

Complete the missing validation such that the first prop is a function and the second an object:

```jsx
function Test(props) { return <p>A</p>; };
Test.propTypes = {
  myFunction: ???.???,
  myObject: PropTypes.???,
};
```


* `PropTypes`
* `func`
* `object`
* `function`
* `obj`
* `node`
* `element`
* `method`
* `Props`
* `Primitives`


