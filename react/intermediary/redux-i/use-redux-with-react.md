---
author: kapnobatai136

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[Redux usage with React](https://redux.js.org/basics/usage-with-react){documentation}'

notes: This can be also placed in the react subtopic

aspects:
  - introduction

---

# Use Redux with React

---
## Content

*Redux* has no relation to *React*, yet it works well with this framework as UI can be described as functions of *state*, which **Redux** can update in response to actions.

React bindings are not provided by default in Redux, so `react-redux` must be installed:

```bash
npm install --save react-redux
```

The general paradigm is that only top level components (e.g. route handlers) should be aware of Redux.

Let's say that you have a `<Counter />` component found in `Counter.js`. The first step in using Redux is making the `store` available to your app. This is done by wrapping the main component (usually found in `App.js`) with the `<Provider />` API, which is provided by React-Redux.

```jsx
// App.js
import React from "react";
import ReactDOM from "react-dom";

import { Provider } from "react-redux";
import store from "./redux/store";

const App = () => (
  <Provider store={store}>
    <Counter />
  </Provider>
);

ReactDOM.render(
  <App />,
  document.getElementById("root")
);
```

Note that you must also pass a `store` attribute to the `<Provider />` wrapper.

---
## Practice

Complete the following code such that you will make the `store` available for your `<App />`:

```jsx
const App = () => (
  <??? ???=???>
    <Counter />
  <???>
);
```

* Provider
* store
* {store}
* /Provider
* state
* {state}
* Reducer
* /Reducer

---
## Revision

Complete the following code such that you will make the `store` available for your `<App />`:

```jsx
const App = () => (
  <??? ???=???>
    <Counter />
  <???>
);
```

* Provider
* store
* {store}
* /Provider
* state
* {state}
* Reducer
* /Reducer
