# The **React** element
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: what-i-need-to-use-react

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/rendering-elements.html){website}


---
## Content

An `element` in **React** is the most basic building block for describing your application's `UI`.

Note that `element`s are **immutable** and their children or attributes can't be updated after rendering. This implies that `element`s describe the `UI` at a specific point in time - like a *snapshot*.

In **React** you'll work mainly with a more flexible concept - `component`s. However, these are *made of* `element`s therefore it's helpful to understand the *fundamentals* of how they work.

To define an element you can simply:
```
const element = <p>Enki was here</p>;
```

`Element`s are plain objects and can be created cheaply and rendered into the **DOM**.

The way `element`s are rendered is with help from the **React DOM**[1], under the `root`[2] node.

Suppose in your **HTML** you have the `div`:
```
<div id="root"></div>
```

Now, using `ReactDOM.render()` you can display in your webpage the element declared above:
```
ReactDOM.render(
  element,
  document.getElementById('root')
);
```

---
## Practice

Render `"Enki"` under the `root` node:
```
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


**React** elements are

??? .

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
