# `ReactDOM.render` ref
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/more-about-refs.html#the-ref-returned-from-reactdom.render){website}

---
## Content

Even though *reactive* data flow always ensures that latest props are sent to each child outputted from `render()`, there are few cases where it's necessary or beneficial to *reach out* to component instances. This is done via `refs` (references).

The `ReactDOM.render()` function (different from the component `render()`) will return a reference to **DOM** node (virtual component's **backing instance**).
```jsx
var comp = ReactDOM.render(<Enki />,
  container);
```

An important distinction to make is that **JSX** doesn't return component instances, but `ReactElement`s which are lightweight representation of how mounted components should look like:
```jsx
var compElement = <Enki />; //ReactElement
var compInstance = ReactDOM.render(
  compElement, container);

compInstance.doSomething();
```

It's advisable that this shouldn't be used at the *top level*. Instead `props` and `state` should handle communication with child components.

---
## Revision

What method will return a `ref` to a component?

???

* `ReactDOM.render()`
* `render()`
