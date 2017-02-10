# Shortcut for transferring props
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
    [facebook.github.io](https://facebook.github.io/react/docs/reusable-components.html#transferring-props-a-shortcut){website}

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
