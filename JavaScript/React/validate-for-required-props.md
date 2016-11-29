# Validate for required props
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: prop-validation

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/reusable-components.html#prop-validation){website}

---
## Content

You can check if the some specified props are passed to the **React** component though `propTypes`. 

This is done by chaining any type of prop validation with `isRequired`. This way, a *warning* will be shown if the prop wasn't provided.

Validate for a **required** function: 
```
propTypes: {
 myFunc: React.PropTypes.func.isRequired,
},
```

You can also check for a value of **any** type:
```jsx
propType: {
  reqAny: React.PropTypes.any.isRequired,
},
```

---
## Revision

Validate for a required prop of any data type:
```jsx
propTypes: {
  reqAny: React.PropTypes.???.???,
},
```
* `any`
* `isRequired`
* `func`
* `bool`
* `instanceOf`
* `anything`