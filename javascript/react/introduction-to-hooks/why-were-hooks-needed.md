---
author: kapnobatai136

levels:

  - medium
  
aspects:

  - new

  - workout

  - deep

type: normal

category: must-know

links:
  - '[render-props](https://reactjs.org/docs/render-props.html){documentation}'
  - '[higher-order-components](https://reactjs.org/docs/higher-order-components.html){documentation}'

---

# Why were hooks needed?

---
## Content

Hooks represent a new addition to React, and they allow you to use state or other useful features without using class components.

Hooks were created to solve a number of issues that were encountered in the past five years since React was created.

In React, there is no direct way to "attach" reusable behavior to a component (such as connecting to a store). The patterns that emerged from the need of reusable behavior were either using [render props](https://reactjs.org/docs/render-props.html) or using [higher-order components](https://reactjs.org/docs/higher-order-components.html) (or HOCs).

A `render prop` is nothing more than a function that a component uses to know what to render.

```jsx
<MyComponent
  render={person => (
    <p>Hello {person.name}</p>
  )}
/>
```

A higher-order component is a function that takes a component and returns a new component:

```js
const EnhancedComponent = higherOrderComponent(
  WrappedComponent
);
```

Although you can use these patterns to create reusable behavior, most of the time they require component restructuring. This can make your code hard to follow because your components will be surrounded by wrappers, consumers, higher-order components, render props and any other abstractions that you make.

To solve this issue, the React team has created hooks.

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

Which of the following does not represent a method of "attaching" reusable behavior to a component?

???

* pure components
* render props
* hooks
* higher-order components