# **React** `this.props.children`
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/children-undefined.html){website}

---
## Content

`this.props.children` is an opaque data structure backed by the `React.Children`  class.

You can't access the children of your component using `this.props.children` because it designates the children being passed onto you by the owner.

```jsx
var App = React.createClass({
  componentDidMount: function() {    
    console.log(this.props.children);
  },
  render: function() {
    return <div><span/><span/></div>;
  }
});
ReactDOM.render(<App></App>, mountNode);
```
In the code snippet above, `this.props.children` won't refer to the `<span>`'s, but to the **undefined** children between `<App></App>`.

`ref`'s should and must be used to access subcomponents.