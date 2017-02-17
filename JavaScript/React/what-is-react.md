# What is **React**?
author: catalin

levels:

  - beginner

type: normal

category: must-know

links:

  - >-
    [andrewhfarmer.com](http://andrewhfarmer.com/what-is-react/){website}

---
## Content

**React** is a *JavaScript* library[1] (not a framework[2]) created and maintained by **Facebook**. It's used for creating user interfaces. 


The big and frequent problem that **React** solves is keeping the `DOM`[3] in sync with the data model.

It does that by generating a `DOM`-like custom object whenever a change is made in the data model. This complex data type is then compared with the real `DOM`, updating the latter only when necessary, thus minimising execution time.


Many developers have adopted this library because of these key features:
 - **one-way data flow**: only the model can change the app's state, making it the "single source of truth"
 - **JSX**: JavaScript syntactic sugar used to quote **HTML** elements, allowing their usage in JS code
 - **virtual DOM**: the `DOM`-like in-memory data structure cache used to efficiently update the real `DOM`


**React** is an open-source project that was released in 2013 and already became the 5th most starred project on **GitHub**. Due to the large number of contributors, this library is improving at a rapid pace.


Being built with performance in mind, **React** has become the first choice for both beginners and experts of Front-End Web Development.

---
## Practice

React manages to keep the _DOM_ in sync with the data model by

???.

* rendering necessary changes with the help of the Virtual DOM
* re-rendering the entire DOM on every change in data
* using functions to update the DOM
* using JSX

---
## Revision

React is a JavaScript

 ??? .

* library
* framework
* application
* implementation of HTML

---
## Footnotes

[1:Library]
You can think of a **library** as a toolkit consisting of helper functions/objects/modules to optimise the coding experience and provide additional functionality.

[2:Framework]
In addition to what a library provides, a **Framework** will dictate the structure/architecture of your application. It is somewhat similar to a *code-template* enhanced with helpers, constructors etc.

[3:DOM]
**DOM** stands for *Document Object Model*.
The **HTML** of a webpage is used to create the **DOM**, which is a in-memory representation of the webpage.
Even though the **HTML** and **DOM** are closely related, they are not the same thing.
Languages such as *CSS* or *JavaScript** manipulate the **DOM** and not the **HTML**.
