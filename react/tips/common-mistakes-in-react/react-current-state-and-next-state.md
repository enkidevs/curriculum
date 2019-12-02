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

We have previously discussed how the `setState()` update call can sometimes be asynchronous. For this reason, the value of `this.state` might not always hold the most up to date value:

```js
increaseAge = age => {
  this.setState({
    // this.state.age might be stale
    age: this.state.age + 1 
  });
};
```

This code generates new state based on its current value, which might contain old data. To reliably update the state based on its latest value you should use the function form of `setState`:

```js
increaseAge = () => {
  this.setState(state => ({
    age: state.age + 1
  }));
};
```

This way, the latest state value is **always** provided as an argument to the function you pass into `setState`, and the new state value will become whatever you return from said function. 

Note: the function also receives the latest `props`, as its second argument.

If using function components, the same logic applies to the `useState` hook:

```js
const increaseAge = () => {
  setAge(age => age + 1);
};
```

---
## Practice

Which function would **always** update the state to the expected value?

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
  this.setState(() => ({
    count: count + 1
  }));
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
