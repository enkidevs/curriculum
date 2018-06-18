---
author: catalin

levels:
  - basic
  - advanced
  - medium

type: normal

category: how to

links:
  - '[facebook.github.io](https://facebook.github.io/react/docs/reusable-components.html#transferring-props-a-shortcut){website}'

parent: custom-proptype-s-to-be-required

---
# Shortcut for transferring props

---
## Content

With the intention of saving time while typing, the **JSX** *spread syntax* can be used to transfer props.

This can be often used because a common type of **React** element is the one that extends a basic **HTML** element. Attributes passed to the component will be inserted in the underlying **HTML**.

Having the following component:

```jsx
var EnkiLink = React.createClass({
  render: function() {
    return (
      <a {...this.props}>
        {this.props.children}
      </a>
    );
  }
});
```

We can directly pass a *HTML attribute*:

```jsx
ReactDOM.render(
  <EnkiLink href="www.enki.com">
    Click here!
  </EnkiLink>,
  document.getElementById('linkID')
);

```

Note how in the component definition we made use of `...this.props`.

---
## Practice

How can you copy the contents of `this.props`, ideally for passing it down to other components?

???

* ...this.props
* React.clone(this.props)
* React.this.props
* this.props.children
* ...this.props.children
* this.props.copy

---
## Revision

How would you use the spread syntax to pass the current `props` to the following `<p/>` element?

```javascript
var Sample = React.createClass({
  render: function() {
    return (
      <p ??? ??? ??? ??? />
    )
  }
})
```

* {
* ...
* this.props
* }
* transfer
* {this.props}
* {...}
* {...props}
* ...props
 
