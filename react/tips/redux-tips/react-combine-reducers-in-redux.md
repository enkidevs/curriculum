---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to


links:

  - '[Combine Reducers](http://rackt.org/redux/docs/api/combineReducers.html){website}'

aspects:
  - deep

---

# Combine reducers in Redux

---
## Content

When applications become more complex, the *reduction function* can and should be split into separate functions, managing different parts of the **state** as to keep the code logic tidy and scalable. This is done by using the special method `combineReducers()`.

This function will transform an object with different reducer functions as parameters into a single reducer function that can be passed to `createStore()`.

Call the function:
```js
combineReducers({
  firstReducer: myFirstReducer,
  secondReducer: mySecondReducer
});
```

The keys define the shape of the **state object**.

```javascript
{
  firstReducer, secondReducer;
}
```

The common practice is to be consistent with name such as that reducers have the same name as the slices they manage. Therefore, **ES6** shorthand notation can be used:

```javascript
combineReducers({
  firstReducer,
  secondReducer
});
```

This is equivalent to:

```javascript
combineReducer({
  firstReducer: firstReducer,
  secondReducer: secondReducer
});
```

Consider we have the following reducers:

```js
// Products.js
export default function products(
  state = [],
  action
) {
  switch (action.type) {
    case "add_product":
      return state.concat([action.product]);
    default:
      return state;
  }
}

// Counter.js
export default function counter(
  state = 0,
  action
) {
  switch (action.type) {
    case "increase":
      return state + 1;
    case "decrease":
      return state - 1;
    case "reset":
      return {
        count: 0
      };
    default:
      return state;
  }
}
```

We can combine our `products` and `counter` reducers like so:

```js
// App.js
import { combineReducers } from "redux";
import products from "./Products";
import counter from "./Counter";

import { createStore } from "redux";

const store = createStore(reducer);

combineReducers({
  products,
  counter
});

console.log(store.getState());
// {
//   counter: 0,
//   products: []
// }

store.dispatch({
  type: "add_product",
  product: "Sandwich"
});
console.log(store.getState());
// {
//   counter: 0,
//   products: [ 'Sandwich' ]
// }

store.dispatch({
  type: "increase"
});
console.log(store.getState());
// {
//   counter: 1,
//   products: [ 'Sandwich' ]
// }
```

---
## Practice

Once the `combineReducers()` function has transformed an object with different reducer functions into a single reducer function, where is it then passed to? 

???

* `createStore()`
* `createReducer()`
* `createObject()`

---
## Revision

What special method is used to combine different reduction functions with the scope of keeping your code scalable?

???

* `combineReducers()`
* `combine()`
* `createStore()`
* `addReducer()`


