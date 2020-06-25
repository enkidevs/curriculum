---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

category: tip

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/component-specs.html ){website}'
  - '[jaketrent.com](http://jaketrent.com/post/test-react-componentwillreceiveprops/){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep
  - obscura

---
# componentWillReceiveProps Not Triggered After Mounting

---
## Content

`componentWillReceiveProps` isn't triggered once the node is added to the scene because of its design.

It handles the logic of comparing with the old props, then acting upon any changes. It doesn't trigger at mounting as there are no old props and this helps define what the methods does.

```javascript
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

---
## Practice

Which is the argument of the `componentWillReceiveProps` function?

```javascript
componentWillReceiveProps(???) {
  // ...
}
```

* nextProps
* currentProps
* oldProps
* nothing

---
## Revision

Which of the following statements is false about `componentWillReceiveProps` lifecylce method?

???

* will only be run once
* isn't triggered once the node is mounted
* can be used to listen to changes in props
* can be triggered after the initial rendering

