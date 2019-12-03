---
author: catalin

levels:

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:
  - introduction

---

# The Redux store

---
## Content

The **Redux** store is simply an object with few *methods* that holds the whole *state tree* of your application. The only way to change this state is by `dispatching` an action to the store.

Although we have connected our component in the previous insight, we still need to create our main reducer:

```js
// App.js
function reducer(state, action) {
  return state;
}
```

The reducer works like any `reduce` function in JavaScript. You pass it a function, and for each element of the array the function is called. The reducer presented above literally does nothing, it just returns the `state` un-modified. It is important to know that the reducer must be a pure function, concept which will be discussed in the following insight.

Now, to create your store you need to pass your main reducer to the `createStore` function:

```js
// App.js
import { createStore } from "redux";

function reducer(state, action) {
  // ...
}

const store = createStore(reducer);
```

To get the current *state tree* of the application:

```js
// App.js
store.getState();
```

To change the *state*, providing an action:

```javascript
store.dispatch(myAction());
```

The `action` object must have a `type` that designates the type of the action wanted to be performed. `Strings` should be used for `types` as they are serializable.

Add a change listener that is called whenever an action is dispatched , and parts of the *state tree* may have changed:

```javascript
store.subscribe(listener);
```

The current **reducer** function can be changed:

```javascript
store.replaceReducer(newReducer);
```

---
## Practice

Create a Redux store and get the current state of the application:

```js
import { createStore } from ‘redux’;
let store =
  ???(reducer, initstate);
store.???();
```

* `createStore`
* `getState`
* `newStore`
* `store`
* `state`
* `currentState`
* `retState`

---
## Revision

What method is used to send an action to the store and to change the state?
???

* `dispatch()`
* `createStore()`
* `getState()`
* `subscribe()`
* `replaceReducer()`


