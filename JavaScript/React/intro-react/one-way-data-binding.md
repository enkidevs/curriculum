# One way data binding
author: catalin

levels:

  - beginner

type: normal

category: must-know

parent: what-is-jsx

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/34519889/can-anyone-explain-the-difference-between-reacts-one-way-data-binding-and-angula){website}

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/two-way-binding-helpers.html){website}


---
## Content

**React** encourages **unidirectional data flow** by design, making it the canonical example of this approach nowadays.

Along with two-way data binding, these approaches describe the way your application keeps the `view` in sync with the data `model`.

In two-way data binding the `model` is dynamically bound to the `view` such that one can change the other and vice-versa.

In **one-way data binding** the `model` is the *single source of truth*.

Instead of changing the `model` directly when a **UI field** changes, the `model` is notified by the intended change and updates the *state* itself. Afterwards, the `view` is updated to match the change.

This technique is often seen as *cleaner* and it's preferred because it gives better control over the **data flow**.

Note that you can still implement two-way data binding in **React**, but this require some extra effort.


---
## Practice

What type of data flow needs to be used if we want the `view` to directly update the data `model`?

???

* two-way
* one-way
* both
* neither
---
## Revision

Can **two-way data binding** be implemented in **React**?

???

* yes
* no
* only in **React 14** and above
