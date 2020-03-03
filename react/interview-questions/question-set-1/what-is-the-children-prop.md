---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Children in JSX](https://reactjs.org/docs/jsx-in-depth.html#children-in-jsx){documentation}'
  - '[Source](https://github.com/30-seconds/30-seconds-of-interviews#what-is-the-children-prop){website}'

---

# What is the `children` prop?

---
## Content

In React, `children` is part of the `props` object, and it represents all the future children of a component. To better understand this, let's take a look at an example:

```jsx
function Wrapper({ children }) {
  return (
    <div className="someStyle">{ children }</div>
  );
}
```

When using the `Wrapper` component without self-closing tags, all of the elements or components passed to it will be placed inside a `div`: 

```jsx
function App() {
  return (
    <Wrapper>
      <p>Enki</p>
      <p>is</p>
      <p>cool!</p>
    </Wrapper>
  );
}
```

All of the `p` elements are the `children` of the `Wrapper` component. Using this method you can pass data to components in a clean way. React also provides many methods to work on the `children` prop:
* `React.Children.map`
* `React.Children.forEach` 
* `React.Children.count`
* `React.Children.only`
* `React.Children.toArray`

---
## Practice

In React, `children` is part of the ??? object. It enables components to ??? to other components.

* props
* be passed as data
* state
* be rendered quicker compared

---
## Revision

Which of the following does not look like a React API method what works with `children`?

???

* React.Children.get
* React.Children.map
* React.Children.forEach
* React.Children.toArray