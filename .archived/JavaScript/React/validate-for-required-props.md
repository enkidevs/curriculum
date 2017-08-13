# Validate for required `props`
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to

parent: prop-validation

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/typechecking-with-proptypes.html){website}

---
## Content

You can check if the some specified props are passed to the **React** component though `propTypes`.

This is done by chaining any type of prop validation with `isRequired`. This way, a *warning* will be shown if the prop wasn't provided.

Validate for a **required** function:
```
MyComponent.propTypes = {
 myFunc: React.PropTypes.func.isRequired,
};
```

You can also check for a value of **any** type:
```jsx
MyComponent.propTypes: = {
  reqAny: React.PropTypes.any.isRequired,
},
```

---
## Revision

Validate for a required prop of any data type:
```jsx
MyComponent.propTypes = {
  reqAny: React.PropTypes.???.???,
};
```
* `any`
* `isRequired`
* `func`
* `bool`
* `instanceOf`
* `anything`
