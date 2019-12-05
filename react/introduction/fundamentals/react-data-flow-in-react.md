---
author: catalin

levels:

  - beginner

type: normal

category: must-know

parent: what-is-jsx

aspects:
  - introduction

---

# Data Flow in React

---
## Content

By design, data in React flows only in **one direction**. Take a look at the following image:

![Data Flow in React](https://img.enkipro.com/e000ba53014eb373691858feda14991a.png)

This process is called **one-way data binding**[1], in which the user (with a click, hover, etc.) triggers the actions that modify the state of React. This, in turn, modifies the UI.

This technique is often seen as *cleaner* and it's preferred because it gives better control over the **data flow**. Only your actions can modify the state, making your actions the only source of truth.

---
## Practice

In React, your ??? modify the state, and the ??? modifies the ???.

* actions
* state
* UI

---
## Revision

What type of data flow does **React** use?

???

* one-way
* two-way
* both
* neither

---
## Footnotes

[1:Two-way data binding]
Although React uses one-way data binding, there is also two-way data binding. By this we mean that the `state` is dynamically bound to the `UI` such that one can change the other and vice-versa:
- when you update a property in the model, the UI is also updated
- when you update the UI, the data model is also changed