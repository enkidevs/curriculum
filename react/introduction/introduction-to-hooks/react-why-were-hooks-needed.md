---
author: kapnobatai136
  
aspects:

  - new

  - workout

  - deep

type: normal

category: must-know

links:
  - '[Render props](https://reactjs.org/docs/render-props.html){documentation}'
  - '[Higher order components](https://reactjs.org/docs/higher-order-components.html){documentation}'

---

# Why were hooks needed?

---
## Content

Hooks allow you to use state or other useful features without using class components.

Hooks were created to solve a number of issues that were encountered in the first five years after React was created.

In React, there is no built-in way to "attach" reusable behavior to a component (such as connecting to a store). The patterns that emerged to solve this need were [render props](https://reactjs.org/docs/render-props.html) and [higher-order components](https://reactjs.org/docs/higher-order-components.html) (or HOCs).

A `render prop` is a function that a component uses to know what to render[1].

```jsx
<MyComponent
  render={person => (
    <p>Hello {person.name}</p>
  )}
/>
```

A higher-order component is a function that takes a component and returns a new component that includes the reusable behavior:

```js
const EnhancedComponent = higherOrderComponent(
  WrappedComponent
);
```

Although you can use these patterns to create reusable behavior, most of the time they require component restructuring. This can make your code more verbose and harder to follow because your components will be surrounded by wrappers, consumers, higher-order components, render props and other potentially noisy abstractions.

To solve this issue, the React team created hooks.

---
## Practice

Which of the following does not represent a method of "attaching" reusable behavior to a component?

???

* pure components
* render props
* hooks
* higher-order components

---
## Revision

Which of the following represents a method of "attaching" reusable behavior to a component?

???

* hooks
* pure components
* nested functions
* class components

---
## Footnotes
[1:render props]
Another version of the "render props" pattern is to pass a function as `children`:

```jsx
<MyComponent>
  {person => (
    <p>Hello {person.name}</p>
  )}
</MyComponent>
```
