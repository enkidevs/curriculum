# Specify a single child
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/reusable-components.html#single-child){website}

---
## Content

Making use of the `propTypes` you can enforce a *warning* fired when you pass more than one child to a component as children.

The validator used is `React.PropTypes.element`.

Suppose the following scenario:
```jsx
React.createClass({
  //propTypes

  render: function() {
    return (
      <div>
        {this.props.children}
      </div>
    );
  }
});
```

To make sure `this.props.children` is **exactly** a single element we suffix the validation with `isRequired`:
```jsx
propTypes: {
  children:
     React.PropTypes.element.isRequired,
}

```

---
## Practice

What validator must be used to make sure there is exactly one child passed to `children`?

```jsx
children: React.PropTypes.???.???,
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

```jsx
children: React.PropTypes.???.???,
```

* `element`
* `isRequired`
* `node`
* `arrayOf`
* `mandatory`
* `one`
* `any`
