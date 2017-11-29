# componentWillReceiveProps Not Triggered After Mounting

author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/component-specs.html
    ){website}

  - >-
    [jaketrent.com](http://jaketrent.com/post/test-react-componentwillreceiveprops/){website}

---
## Content

`componentWillReceiveProps` isn't triggered once the node is added to the scene because of its design.

It handles the logic of comparing with the old props, then acting upon any changes. It doesn't trigger at mounting as there are no old props and this helps define what the methods does.

```JavaScript
var testingComponent = React.createClass({
  getDefaultProps() {
    return {
     currentProp: "to change"
    };
  },
  getInitialState() {
    return {
      change: "no change"
    };
  },
  componentWillReceiveProps(nextProps) {
    this.setState({
         modified: nextProps.currentProp
         + "changed"
    });
  },
  render() {
    return <div class="displayed">
           {this.state.change}</div>
  }
});
```

Find a link below to check out other lifecycle methods to find the one you need!
