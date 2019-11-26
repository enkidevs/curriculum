---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[Requiring Single Child](https://facebook.github.io/react/docs/typechecking-with-proptypes.html#requiring-single-child){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - workout
  - deep

---

# Specify a single child

---
## Content

Making use of the `propTypes`, you can show a *warning* or throw an *error*, when you pass more than one child to a component.

The validator used is `PropTypes.element`.

Suppose we have the following scenario:
```jsx
import PropTypes from 'prop-types';

class NewComponent extends React.Component {
  render {
    return (
      <div>
        {this.props.children}
      </div>
    );
  }
}
```

To make sure `this.props.children` is **exactly** a single element we suffix the validation with `isRequired`:
```jsx
propTypes: {
  children: PropTypes.element.isRequired,
}
```

To throw an error if anything but exactly 1 element is passed as `children`, we suffix the `PropTypes` validation with `isRequired`:
```js
NewComponent.propTypes = {
  children: PropTypes.element.isRequired
};
```

---
## Practice

What validator must be used to make sure there is exactly one child passed to `children`?

```js
children: PropTypes.???.???,
```


* `element`
* `isRequired`
* `node`
* `arrayOf`
* `mandatory`
* `one`
* `any`

---
## Revision

What validator must be used to make sure there is exactly one child passed to `children`?

```js
children: PropTypes.???.???,
```


* `element`
* `isRequired`
* `node`
* `arrayOf`
* `mandatory`
* `one`
* `any`


