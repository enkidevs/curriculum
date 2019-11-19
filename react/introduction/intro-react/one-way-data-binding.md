---
author: catalin

levels:

  - beginner

type: normal

category: must-know


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/34519889/can-anyone-explain-the-difference-between-reacts-one-way-data-binding-and-angula){website}'
  - '[facebook.github.io](https://facebook.github.io/react/docs/two-way-binding-helpers.html){website}'

parent: what-is-jsx

aspects:
  - introduction

---

# One way data binding

---
## Content

**React** encourages **unidirectional data flow** by design and lets you describe the way your application keeps the **view**[1] in sync with the data **model**[2] using an HTML-like language called JSX. This process is called **one-way data binding**[3].

In **one-way data binding**, the `model` is the *single source of truth*. Instead of changing the `model` directly when a **UI field** changes, the `model` is notified by the intended change and updates the *state* itself. Afterwards, the `view` is updated to match the change.

This technique is often seen as *cleaner* and it's preferred because it gives better control over the **data flow**.

---
## Practice

What type of data flow does **React** use?

???

* one-way
* two-way
* both
* neither

---
## Revision

In which type of data flow is the `model` the *single source of truth*?

???

* one-way
* two-way
* both
* neither

---
## Footnotes

[1:Model-view-controller]
The **model-view-controller** (or MVC) represents a common design pattern in which the related program logic is divided into three interconnected elements.

![Model View Controller](https://img.enkipro.com/9403fd4047aab1ce45594ac2317cf505.png)

The view has two meanings:
* it is any representation of information (e.g. diagram)
* it is presentation of the model in a particular format

[2:Model]

![Model View Controller](https://img.enkipro.com/9403fd4047aab1ce45594ac2317cf505.png)

As with the view, the model also has two meanings:
* it directly manages the data, logic and rules of application
* 

[3: Two-way data binding]
Although React uses one-way data binding, there is also two-way data binding. By this we mean that the `model` is dynamically bound to the `view` such that one can change the other and vice-versa:
- when you update a property in the model, the UI is also updated
- when you update the UI, the data model is also changed