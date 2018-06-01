---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know


links:

  - '[rackt.org](http://rackt.org/redux/docs/api/Store.html){website}'
---

# The **Redux** store

---

## Content

The **Redux** store is simply an object with few _methods_ that holds the whole _state tree_ of your application. The only way to change this state is by `dispatching` an action to the store.

To create your store you need to pass your main `reducer` to the `createStore` function :

```javascript
import { createStore } from "redux";
let store = createStore(reducer, initState);
```

Get the current _state tree_ of the application:

```javascript
store.getState();
```

Change the _state_, providing an action:

```javascript
store.dispatch(myAction());
```

The `action` object must have a `type` that designates the type of the action wanted to be performed. `Strings` should be used for `types` as they are serializable.

Add a change listener that is called whenever an action is dispatched , and parts of the _state tree_ may have changed:

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

```
import { createStore } from ‘redux’;
let store =
  ???(reducer, initstate);
store.???();
```

- `createStore`
- `getState`
- `newStore`
- `store`
- `state`
- `currentState`
- `retState`

---

## Revision

What method is used to send an action to the store and to change the state?
???

- `dispatch()`
- `createStore()`
- `getState()`
- `subscribe()`
- `replaceReducer()`
