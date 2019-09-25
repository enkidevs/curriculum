---
author: kapnobatai136
  
aspects:

  - workout

  - deep

type: normal

category: tip

---

# Current state and next state

---
## Content

In the previous insight we have discussed how the `setState()` update call is asynchronous. For this reason, when you update the state to a value that is based on the old state you might end up with weird values if you do the following:

```js
increaseAge = age => {
  this.setState({
    age: this.state.age + 1
  });
};
```

This code relies on the current value of state to update it, but it is not correct. The proper way of updating the state is by using the functional form of `setState`:

```js
increaseAge = () => {
  this.setState(state => ({
    age: state.age + 1
  }));
};
```

This way, the latest state value is used. When using the functional form of `setState`, you can also pass a second argument - `props` at the time the update is applied. This argument can be used in a manner similar to state.

If using functional components, the same logic applies to the `useState` hook:

```js
const increaseAge = () => {
  setAge(age => age + 1);
};
```

---
## Practice

Which function would correctly update the state?

```js
A = count => {
  this.setState({
    count: this.state.count + 1
  });
};

B = () => {
  this.setState(state => ({
    count: state.count + 1
  }));
};

C = count => {
  this.setState(state => {
    count: state.count + 1;
  });
};
```

???

* B
* A
* C

---
## Revision

Complete the following code:

```js
function Person() {
  const [age, setAge] = ???(0);

  const increaseAge = () => {
    ???(??? => age + 1);
  };
}
```

* `useState`
* `setAge`
* `age`
* `setState`
* `updateAge`
* `useProps`