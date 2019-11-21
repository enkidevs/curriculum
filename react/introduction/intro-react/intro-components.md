---
author: kapnobatai136

levels:
  - beginner

type: normal

category: must-know

links:
  - '[React Getting Started](https://facebook.github.io/react/docs/getting-started.html){website}'

parent: why-use-react

aspects:
  - introduction

---

# Intro components

---
## Content

One of the main concept and the building block of React is the component.

A component can be anything:
- a header ith an image
- a list of links
- a button

So, for example, this is a React component:
```jsx
function App() {
  return (
    <div>
      <ol>
        <li>
          <a href='#'>Enki</a>
        </li>
        <li>
          <a href='#'>Is</a>
        </li>
        <li>
          <a href='#'>Cool</a>
        </li>
      </ol>
    </div>
  )
}
```

And this component will display:

![First React Component](https://img.enkipro.com/299cd451feedb68007faf2d7143aa914.png)

Don't worry too much about components now as we will talk more about this in the following workouts.