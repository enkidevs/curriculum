---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

category: tip

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---
# Props in constructor's state

---
## Content

Passing down props from the parent to generate state in the `constructor` can lead to duplication of *source of truth*, where the real data is located. This is considered an "anti-pattern".

An example of a duplication of source of truth:

```javascript
class Duplication extends React.Component {
  constructor(props) {
    super(props);
    this.state = {nameWithQualifier: 'Country ' + this.props.country};
  }
  render() {
    return (
      <div>
        {this.state.nameWithQualifier}
      </div>
    );
  }
}
```

This is bad due to `this.state` being invoked when the component is first created, therefore the example allows a value to get out of sync.

Computing values on-the-fly ensures that values don't get out of sync later and cause maintenance issues.

```javascript
class OnTheFly extends React.Component {
  render() {
    return (
      <div>
        {'Country: ' + this.props.country}
      </div>
    );
  }
}

ReactDOM.render(
  <OnTheFly country="England" />,
  document.getElementByID('foo')
);
```

---
## Practice

Which of the following two components do you think employs the best practice for passing props?

```javascript
class A extends React.Component {
  constructor(props) {
    super(props);
    this.state = {myState: this.props.myProp};
  }
  render() {
    return (
      <div>
        {this.state.myState}
      </div>
    );
  }
} 

class B extends React.Component {
  render() {
    return (
      <div>
        {this.props.myProp}
      </div>
    );
  }
} 
```

???

* B
* A
* both
* neither

---
## Revision

What do you think about generating state from props in `this.state` in the constructor?

???

* it's an anti-pattern
* it's a good practice
* can cause application crashes
* it's useful when working with many props
