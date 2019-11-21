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

  - '[Type checking with PropTypes](https://facebook.github.io/react/docs/typechecking-with-proptypes.html#react.proptypes){website}'
  - '[PropTypes library](https://www.npmjs.com/package/prop-types){website}'

parent: destructuring-arguments

aspects:
  - introduction

---

# `props` Validation

---
## Content

`JavaScript` being a loosely typed language you can experience runtime errors when you expect data of one type but receive another. *React* helps us in this by providing a feature called `propTypes`.

This helps you in validating if the data (`props`) received in components is valid compared to what you expect. If not, warnings will be displayed in the *JavaScript* console.

To access the validators, you must first install the `prop-types` library which can be done using the NPM package manager:

```shell
$ npm install --save prop-types
```

Now, all validators are available through `PropTypes` and should be specified as part of your *React* component, on the property `propTypes`:

```jsx
import React from "react";
import PropTypes from "prop-types";

class MyComponent extends React.Component {
  render() {
    // ...
  }
}

MyComponent.propTypes = {
  myArray: PropTypes.array,
  myBoolean: PropTypes.bool,
  myFunction: PropTypes.func,
  myNumber: PropTypes.number,
  myObject: PropTypes.object,
  myString: PropTypes.string,
  mySymbol: PropTypes.symbol
};
```

The validations above state that the specified `props` should be **JS** primitives. By default, they are **optional** so no warnings are shown if they are not passed to the component.

However, they can be required by appending `.isRequired` to the type:

```jsx
MyComponent.propTypes = {
  myFunc: PropTypes.func.isRequired
};
```

Now, let's create a component and verify that the `name` prop is a string:

```jsx
class Welcome extends React.Component {
  render() {
    return (
      <h1>Welcome {this.props.name}</h1>
    );
  }
}

Welcome.propTypes = {
  name: PropTypes.string
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


