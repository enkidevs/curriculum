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

# Intro Components

---
## Content

One of the main concepts and the building block of React is the component.

You can think of a component as a definition representing one or more UI elements. For example, a component can represent:
- a header with an image
- a list of links
- a button

For example, this is a React component:
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

This component will display:

![First React Component](https://img.enkipro.com/5a030d8423366ee69b10f1a8b0edd065.png)

Don't worry too much about components now as we will talk more about them in the following workouts.

For now, it’s enough to understand that components in React represent definitions of UI elements.