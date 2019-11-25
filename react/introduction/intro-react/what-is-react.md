---
author: catalin

levels:

  - beginner

type: normal

category: must-know


links:

  - '[30 days of React](https://www.fullstackreact.com/30-days-of-react/day-1/){website}'

aspects:
  - introduction

---

# What is React?

---
## Content

**React** is a *JavaScript* library[1] (not a framework[2]) created and maintained by **Facebook**. It's used for creating user interfaces.

The main benefit of React is in the way it enhances developer productivity. 

The UI in React is represented as a function of the state. This means that developers only write the declarative[3] rules of how the UI will look for the given data and leave it to React to perform actual visual updates behind the scenes.

It allows you to write the rules of how the UI will look for a particular piece of data and performs actual UI updates behind the scenes. 

It does that by generating a `DOM`-like[4] custom object whenever a change is made in the data model. This complex data type is then compared with the real `DOM`, updating the latter only when necessary, thus minimizing execution time[5].

Many developers have adopted this library because of these key features:
 - **one-way data flow**: only the model can change the app's state, making it the "single source of truth"
 - **JSX**: JavaScript syntactic sugar used to quote **HTML** elements, allowing their usage in JS code
 - **virtual DOM**: the `DOM`-like in-memory data structure cache used to efficiently update the real `DOM`

React is an open-source[6] project that was released in 2013 and has since become one of the most popular UI libraries with millions of weekly downloads and its usage has spread across many platforms (web, mobile, etc). It has become one of the [top starred projects on GitHub](https://github.com/search?q=stars%3A%3E100&s=stars&type=Repositories). Due to the large number of contributors, this library is improving at a rapid pace.


By focusing on developer experience, **React** has become the first choice for both beginners and experts of Front-End Web Development.

---
## Practice

React manages to keep the DOM in sync with the data model by

???


* rendering necessary changes with the help of the Virtual DOM
* re-rendering the entire DOM on every change in data
* using functions to update the DOM
* using JSX

---
## Revision

React is a JavaScript

 ???


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

[3:Imperative vs Declarative]
In imperative programming, you define all the necessary steps your code needs to take to complete it's mission. In declarative programming, you assume that the computer already knows all the necessary steps, so you just tell it what you want the end result to be. To find out more analogies and information, make sure to check out this great article on [Imperative vs Declarative Programming](https://tylermcginnis.com/imperative-vs-declarative-programming/).

[4:DOM]
**DOM** stands for *Document Object Model*.
The **HTML** of a webpage is used to create the **DOM**, which is a in-memory representation of the webpage.
Even though the **HTML** and **DOM** are closely related, they are not the same thing.
Languages such as *CSS* or *JavaScript* manipulate the **DOM** and not the **HTML**.

[5:Virtual DOM]
This is also referred to as the Virtual DOM or VDOM. It is a virtual representation of the UI that is kept in memory and synced with the real DOM by a library. In our case, this library is `ReactDOM`.

[6:Open-source]
An open-source software is protected by copyright laws, but the owner grants users the right to study, change, and distribute the software to anyone for any purpose.