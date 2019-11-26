---
author: kapnobatai136
  
aspects:

  - workout

  - deep

type: normal

category: tip

---

# setState is async

---
## Content

More often than not, we are eager with accessing a new state value after setting it. Because a new value is set on the next available render, the state might not reflect your latest update. Let's take a look at an example:

```js
handleChange = age => {
  this.setState({ age });
  this.props.callback(this.state.age);
};
```

In the `handleChange` function, when we call `this.props.callback(this.state.count)` we are getting the old state value, not the new one we set through `this.setState({ count })` (because the state hasn't yet updated between the two lines of code). This issue can be fixed by using an optional second argument of the `setState` method, a callback function that is called after the state is updated:

```js
handleChange = age => {
  this.setState({ age }, () => {
    this.props.callback(this.state.age);
  });
};
```

If using function components together with hooks, you would use:

```jsx
const [age, setAge] = useState(0);

useEffect(() => {
  callback(age);
}, [age, callback]);

const handleChange = value => {
  setAge(value);
};
```

In the `useEffect()` hook, the `callback(age)` is called whenever the value of `age` changes. 

Note: Another important takeaway here is that although `setState` can be async, this happens behind the scenes, and we cannot control it. `setState` doesn't return a promise so using `await` or `then` will not work.

---
## Practice

When thinking of class components, where would you insert a callback function so that you can access the latest value of the state?

???

* as a second argument in the `setState` method
* after calling the `setState` method
* before calling the `setState` method
* anywhere, as long as it is in the same scope as the `setState` method

---
## Revision

Complete the following code to correctly update the state:

```js
// class
handleChange = age => {
  this.setState({ age }, () => {
    ???(???);
  });
};

// function
const [age, setAge] = useState(0);

useEffect(() => {
  ???;
}, ???);

const handleChange = value => {
  setAge(value);
};
```

* `this.props.callback`
* `this.state.age`
* `callback(age)`
* `[age, callback]`
* `props.callback`
* `state.age`
* `[callback, age]`
* `callback(state.age)`
