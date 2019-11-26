---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Rendering elements](https://facebook.github.io/react/docs/rendering-elements.html){website}'

parent: what-i-need-to-use-react

aspects:
  - introduction

---

# The React element

---
## Content

An element in **React** is the most basic building block for describing your application's UI.

It is important to know that elements are **immutable** and their children or attributes can't be updated after rendering. This implies that elements describe the UI at a specific point in time - like a *snapshot*.

In **React** you'll work mainly with a more flexible concept, components, which are *wrappers* around elements that provide additional capabilities.

To define an element, you can:
```jsx
// create an object representing
// a React element
const element = React.createElement(
  'p', // type
  null, // props
  'Enki was here' // children
)

// or using JSX
const element = <p>Enki was here</p>;
```

Elements are plain objects and can be created cheaply and rendered into the **DOM**.

The way elements are rendered is with help from the **React DOM**[1], under the `root`[2] node.

Suppose in your **HTML** you have the `div`:
```html
<div id="root"></div>
```

Now, on your webpage, you can display the `<p>` element (declared above) as a child of the `"root"` div, using `ReactDOM.render()` :
```jsx
ReactDOM.render(
  element,
  document.getElementById("root")
);
```

---
## Practice

Render `"Enki"` under the `root` node:
```jsx
const element = <h2>Enki<h2>;

???.render(
  ???,
  document.getElementById('???')
);
```


* `ReactDOM`
* `element`
* `root`
* `react-dom`
* `Enki`
* `div`
* `id`

---
## Revision

`React` elements are

???


* immutable
* mutable
* **DOM** elements
* components
* classes

---
## Footnotes
[1:ReactDOM]
The `ReactDOM` module exposes **DOM** specific methods, being the *glue* between **React** and the **DOM**. Until recently, this package was bundled within the core **React**.

You can install `react-dom` like:
```
npm install --save react-dom
```

[2:root]

`ReactDOM` uses a `root` **node** as an entry point into the **DOM**.
Application only built with **React** will have just one `root` node, but when you integrate **React** into an existing app, you can have multiple `root`s.

