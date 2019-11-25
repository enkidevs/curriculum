---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

category: must-know

links:
  - '[Ajax FAQ](https://facebook.github.io/react/docs/faq-ajax.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---
# Load Initial Data via AJAX

---
## Content

Data is typically fetched in the `componentDidMount` lifecycle method. When the response has arrived, the data is stored in a state, triggering a render to update your user interface.

If processing an asynchronous request-response, ensure the component is still mounted before updating its state. This can be done by tracking mount and un-mount within the component, and checking it hasn't been unmounted before calling `setState`:

```javascript
class LoadData extends React.Component {
  componentDidMount() {
    this.mounted = true;
    $.get(this.props.source, result => {
      if (this.mounted) {
        this.setState({
          username: result.owner.login
        });
      }
    });
  }
  render() { ... }
  componentWillUnmount() {
    this.mounted = false;
  }
}
```

---
## Practice

Suppose you want to load some data via an ajax call to your component after it was mounted. Fill in the gaps such that you make sure you won't update the state with your ajax call login if the component is unmounted:

```javascript
class Component extends React.Component {
  ???() {
    this.??? = ???
    $.get(this.props.ajaxSource, res => {
      if (???) {
        this.setState({
          propToUpdate: res
        })
      }
    })
  }
  render() {
    // ...
  }
  ???() {
    this.mounted = false
  }
})
```

* componentDidMount
* mounted
* true
* this.mounted
* componentWillUnmount
* componentDidUnMount
* render
* false
* isMounted

---
## Revision

Suppose you need to load some data via an ajax call to your component, after it was mounted.

Which lifecycle method will you use to load the data?

```javascript
class Component extends React.Component {
  ??? {
    $.get('path/to/resource', res => {
      // ...
    })
  }
})
```

* componentDidMount()
* componentDidUnmount()
* componentDidRender()
* render()
* component()

