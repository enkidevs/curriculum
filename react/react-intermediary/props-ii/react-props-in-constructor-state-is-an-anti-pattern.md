---
author: tommarshall
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Props in constructor's state


---

## Content

Using props from the parent to create the state in the child's `constructor` can lead to stale data if those props change.

Here's an example:

```jsx
class CountryName extends React.Component {
  constructor(props) {
    super(props);

    // find the country name based on the country code
    // which comes from the parent
    const countryName = getName(props.countryCode);

    // set the country name into the state
    this.state = {
      countryName
    };

    // because we're doing this in the constructor,
    // which runs only once when component is created,
    // the state will not update if props.countryCode changes
  }

  render() {
    return (
      <div>
        {this.state.countryName}
      </div>
    );
  }
}
```

If the parent component of `CountryName` changes the value for `countryCode` and sends it to `CountryName`, `CountryName` will still show the previous value and not render the update.

This is because a `constructor` will run only once when the component gets created, not everytime the props change. 

We can ensures that values don't get out of sync by computing them from props directly.

```jsx
class CountryName extends React.Component {
  render() {
    // create the countryName directly from props
    // in the render method, which means its value
    // will always be in sync if countryCode changes
    const countryName = getName(props.countryCode);

    return (
      <div>
        {countryName}
      </div>
    );
  }
}

ReactDOM.render(
  <CountryName countryCode="US" />,
  document.getElementByID('foo')
);
```


---

## Practice

The `constructor` of a components runs every time the props change.

???

- False
- True

---

## Revision

If we wanted to make sure that the `countryName` is always in sync with `countryCode`, what should we change in the code below?

```jsx
class CountryName extends React.Component {
  constructor(props) {
    super(props);

    const countryName = getName(props.countryCode);

    this.state = {
      countryName
    };
  }

  render() {
    return (
      <div>
        {this.state.countryName}
      </div>
    );
  }
}
```

* use `props.countryCode` in `render`, not in the `constructor`
* use `this.props.countryCode` instead of `props.countryCode`
* delete the `super(props)` line
* set to state directly with `this.state.countryName = props.countryCode`
