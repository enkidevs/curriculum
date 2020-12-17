---
author: catalin

levels:
  - basic
  - advanced
  - medium

type: normal

category: must-know

links:
  - '[facebook.github.io](https://facebook.github.io/react/docs/refs-and-the-dom.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---
# ReactDOM.render ref

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
## Practice

What will the following call return?

???

```javascript
var x = <Enki />
```

What will the following call return?

```javascript
var y = ReactDOM.render(
  <Enki />, container
)
```

Suppose the Enki component has a method `sayHello`. Which of the two variables above will be allowed to call it like:

```javascript
???.sayHello()
```

* element instance
* y
* component instance
* x
* DOM
* ReactDOM
* variable
* constant

---
## Revision

What method will return a `ref` to a component?

???

* ReactDOM.render()
* render()

