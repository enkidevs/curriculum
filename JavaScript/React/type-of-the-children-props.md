# Type of the Children props
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

parent: custom-proptype-s-to-be-required

tags:

  - ''

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/children-props-type.html){website}

---
## Content

Generally, a components children, `this.props.children`, would be an array of components.

When there is a single child, `this.props.children` will be the the single child component itself *without the array wrapper*, hence saving the allocation of an array.

The example shows both with and without an array allocation:

``` JavaScript
var Wrapper = React.createClass({
  componentDidMount: function() {
    console.log(
      Array.isArray(this.props.children)
    );
  }
  render: function() {
      return <div />;
  }
});

// an array of components
ReactDOM.render(
  <Wrapper><span/><span/>
         <span/></Wrapper>,
  document.getElementById('foo')
);

// single child (no array allocation)
ReactDOM.render(
  <Wrapper>hello</Wrapper>,
  document.getElementById('foo2')
);

```
