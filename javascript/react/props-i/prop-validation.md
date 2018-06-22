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

  - '[facebook.github.io](https://facebook.github.io/react/docs/typechecking-with-proptypes.html#react.proptypes){website}'

parent: destructuring-arguments

---

# `props` Validation

---
## Content

`JavaScript` being a loosely typed language you can experience runtime errors when you expect data of one type but receive another. *React* helps us in this by providing a feature called `propTypes`.

This helps you in validating if the data (`props`) received in components is valid compared to what you expect. If not, warnings will be displayed in the *JavaScript* console.

All validators are available through `React.PropTypes` and should be specified as part of your *React* component, on the property `propTypes`:
```jsx
// class MyComponent extends ...

MyComponent.propTypes = {
  myArray: React.PropTypes.array,
  myBoolean: React.PropTypes.bool,
  myFunction: React.PropTypes.func,
  myNumber: React.PropTypes.number,
  myObject: React.PropTypes.object,
  myString: React.PropTypes.string,
};
```

The validations above state that the specified `props` should be **JS** primitives. By default, they are **optional** so no warnings are shown if they are not passed to the component.

 However, they can be required by appending `.isRequired` to the type:
```
MyComponent.propTypes = {
 myFunc: React.PropTypes.func.isRequired,
};
```

Note that `propTypes` are only checked in development mode due to performance reasons.

---
## Practice

Complete the missing validation such that the first prop is a function and the second an object:

```jsx
function Test(props) { return <p>A</p>; };
Test.propTypes = {
  myFunction: React.???.???,
  myObject: React.PropTypes.???,
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
  myFunction: React.???.???,
  myObject: React.PropTypes.???,
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

 
