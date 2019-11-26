---
author: kapnobatai136

levels:
  - advanced
  - medium
  - basic

type: normal

category: must-know

aspects:
  - introduction

---
# Your first reducer

---
## Content

In a previous insight we have created a reducer that looked something like this:

```jsx
// App.js
function reducer(state, action) {
  return state;
}
```

Let's try and develop this reducer to make it fit with our `<Counter />` component. The first step consists of setting our initial `state`, and passing that to our reducer:

```jsx
// App.js
const initialState = {
  count: 0
};

function reducer(
  state = initialState,
  action
) {
  return state;
}
```

You might be wondering what an `action` is, and the answer to that is: a plain object that has a property called `type` and (optionally) other properties specific to that action type:

```jsx
{
  type: "add an item",
  item: "banana"
}
```

For our component, we will want to increase, decrease or reset the counter. To do this, we would write our reducer such that it inspects the `type` of an action received and returns the new updated state for a particular action:

```jsx
//App.js
function reducer(
  state = initialState,
  action
) {
  switch (action.type) {
    case "increase":
      return {
        count: state.count + 1
      };
    case "decrease":
      return {
        count: state.count - 1
      };
    case "reset":
      return {
        count: 0
      };
    default:
      return state;
  }
}
```

Note that you should always return the `state`, even if it was unchanged. Returning an `undefined` state might break your app.

Now that we have created our reducer, we need to `dispatch` the actions so that the `state` is changed. We will do this in the main body of our `<Counter />` component:

```jsx
// Counter.js
class Counter extends React.Component {
  // ...
  increase = () => {
    this.props.dispatch({
      type: "increase"
    });
  };

  decrease = () => {
    this.props.dispatch({
      type: "decrease"
    });
  };

  reset = () => {
    this.props.dispatch({ type: "reset" });
  };
  // ...
}
```

The last step is connecting the handler functions `increase`, `decrease`, and `reset` to their corresponding buttons and you have finished integrating `react-redux` in your app.


---
## Practice

Complete the following code to dispatch the `add` action:

```jsx
class MyApp extends React.Component {
  // ...
  add = () => {
    ???.???.???({ ???: 'add' })
  };
  // ...
}
```

* this
* props
* dispatch
* type
* that
* state
* action
* send

---
## Revision

Complete the following code to dispatch the `add` action:

```jsx
class MyApp extends React.Component {
  // ...
  add = () => {
    ???.???.???({ ???: 'add' })
  };
  // ...
}
```

* this
* props
* dispatch
* type
* that
* state
* action
* send
