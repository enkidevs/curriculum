# Load Initial Data via AJAX
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/initial-ajax.html){website}

---
## Content

Data is typically fetched in the  `componentDidMount` lifecycle method. When the response has arrived, the data's stored in a state, triggering a render to update your user interface.

If processing an asynchronous request response, ensure the component is still mounted prior to updating its state. This can be done by tracking mount and unmount within the component, and checking it hasn't been unmounted before calling `setState`:

```JavaScript
var loadData = React.createClass({
 componentDidMount() {
    this.mounted = true;   
    $.get(this.props.source, (result) => {
      if (this.mounted) {
        this.setState({
          username: result.owner.login;
        });
      }
    });
  },

  render() { ... },

  componentWillUnmount() {
    this.mounted = false;
  }
});
```
