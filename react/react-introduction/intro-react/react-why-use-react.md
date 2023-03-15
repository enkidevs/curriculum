---
author: catalin
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Why use React?


---

## Content

**React** is considered a great choice for building the **UI** of web applications - be it *SPAs*[1] or large projects with numerous authors due to the **self-containing** nature of its *components*.

In addition to the previously stated reasons why developers are eager to adopt this library, **React** comes with many more interesting features such as:

- great *performance* as a result of the **Virtual DOM** diff algorithm[2]
- **React**'s syntax is declarative[3]
- easier debugging with **out-of-the-box tools** such as the `React Developer Tools` extension for Chrome or Firefox
- knowing **React** allows you to easily switch to **React Native** to build native mobile applications

**React Native** is a different JS open-source library released by *Meta* that follows the same design patterns as **React**. It's used to create applications for specific operating systems such as `Android`, `iOS` or `UWP`[4], but it lets you share a large percentage of code between them.


---

## Practice

Which of the following statements is false about **React**?

???

- The virtual DOM renders the whole UI on each change.
- The syntax is declarative.
- It can create web and mobile applications.


---

## Revision

Which one of the following improves **React**'s performance the most?

???

- Virtual DOM diff algorithm
- JSX
- SEO
- React Native
- React Chrome Extension
- one-way data binding


---

## Footnotes

[1:SPA]

**Single-Page Applications** (SPAs) are Web apps that load a single `HTML` page and dynamically update that page as the user interacts with the app.

[2:VDOM]
The Virtual DOM (or VDOM) is a programming concept in which a "virtual" representation of the DOM is kept in memory. It is synced with the "real" DOM by using a library, which in React's case is the `ReactDOM` library. The Virtual DOM provides increased performance because it reduces the need for expensive interactions with the actual DOM. Most data changes in React stay in the virtual, in-memory DOM and only propagate to the actual DOM if necessary.

```jsx
<div className="first" />

<div className="second"/>
```

In this case, React knows to only modify the `className` on the underlying DOM node. For more information on the **diff algorithm** that React uses, make sure to check out [this article](https://reactjs.org/docs/reconciliation.html).

[3:Declarative Syntax]
This means that you write your code such that it describes what you want to do, not how you want to do it. Figuring out how is an implementation detail of the runtime system.

[4:UWP]

**Universal Windows Platform** (UWP), is a platform-homogeneous application architecture created by *Microsoft* intended to help the development of universal applications that can run on multiple types of devices (*PC* and *Mobile*).
