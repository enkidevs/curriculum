---
author: catalin

levels:
  - advanced
  - medium

type: normal

category: how to

links:
  - '[Async actions](http://redux.js.org/docs/advanced/AsyncActions.html){website}'
  - '[Why do we need middleware for async flow in Redux](http://stackoverflow.com/questions/34570758/why-do-we-need-middleware-for-async-flow-in-redux){website}'
  - '[Redux thunk](https://github.com/reduxjs/redux-thunk){website}'

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

Dealing with async operations in Redux is usually achieved with external libraries that enhance Redux with additional capabilities allowing you to handle async behavior.

Common strategies take advantage of promises by allowing them to be used somewhere in the Redux data flow: returned from action dispatching, sent via action creators, etc. With any strategy, an async library will typically send an initial action when an async operation begins (a promise is created), then send another action (either success or error) when the async operation ends (a promise is settled).

Some well-known libraries are `redux-thunk` and `redux-promise`.

There are two ways of adding capabilities to Redux, whether that is handling async operations or something else. The first one is to add one or more `middleware`s. The second is by enhancing the Redux store. 

To use `redux-thunk`, you must first install the library. Here's how to do that using the NPM package manager:

```shell
npm install redux-thunk
```

The next step consists of enabling Redux Thunk, which is done by calling `applyMiddleware(thunk)` when creating the store:

```js
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

```js
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

```js
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

