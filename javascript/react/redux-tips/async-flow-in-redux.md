---
author: catalin

levels:
  - advanced
  - medium

type: normal

category: how to

links:
  - '[redux.js.org](http://redux.js.org/docs/advanced/AsyncActions.html){website}'
  - '[stackoverflow.com](http://stackoverflow.com/questions/34570758/why-do-we-need-middleware-for-async-flow-in-redux){website}'
  - '[redux-thunk](https://github.com/reduxjs/redux-thunk){website}'

notes: >-
  This insight should be given right before or after the specific Middleware
  insight. ( 56a2137805a87a0600cfa409 )

aspects:
  - deep

---
# Async flow in Redux

---
## Content

The default **Redux** store only supports synchronous data flow. However, with the help of `middleware`s, asynchronous data flow is also possible.

Packages such as `redux-thunk` and `redux-promise` provide syntax sugar as to help you achieve such data flow.

The main difference between a custom implementation of middleware or using a specific package is that the former wraps the store’s `dispatch()` method and allows you to dispatch something other than actions such as functions. This functions do not have to be **pure**, so asynchronous API calls are permitted.

To use `redux-thunk`, you must first install the library. Here's how to do that using the NPM package manager:

```shell
npm install redux-thunk
```

The next step consists of enabling Redux Thunk, which is done by calling `applyMiddleware(thunk)` when creating the store:

```jsx
import {
  createStore,
  applyMiddleware
} from "redux";
import thunk from "redux-thunk";

const store = createStore(
  reducer,
  applyMiddleware(thunk)
);
```

Now that we have enabled Redux Thunk, we can use it to create async functions. Here is an example:

```jsx
function increase() {
  return {
    type: "increase_counter"
  };
}

function increase_async() {
  return dispatch => {
    setTimeout(() => {
      dispatch(increase());
    }, 1000);
  };
}
```

In the above example, the `increase_async` function will dispatch our `increase` action after waiting one second. It is also possible to create functions that dispatch after a certain condition has been fulfilled:

```jsx
function conditional_async() {
  return (dispatch, getState) => {
    const { counter } = getState();

    if (counter < 51) {
      return;
    }

    dispatch(increase());
  };
}
```

In this example, we get the current `state` of our app, and if the `counter` is less that 51 we dispatch the `increase()` action defined before. If the `counter` is higher than or equal to 51, then we do nothing.

---
## Practice

Which of the following packages do you think does not provide support for async flow in your **React** application?

???

* bluebird
* redux-thunk
* redux-promise

---
## Revision

Does the default Redux store support asynchronous data flow?

???

* no
* yes
* only if used with React
* only with ES6

