---
author: mihaiberq
type: normal
category: best-practice
tags:
  - introduction
  - new
  - deep
links:
  - >-
    [Modularize your
    solutions](https://github.com/i0natan/nodebestpractices/blob/master/sections/projectstructre/breakintcomponents.md){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Split Your Project into Components


---

## Content

One common practice of overzealous beginner developers is to trade the time spent on structuring the project for time spent coding. This works fine for personal or small projects, but has serious downsides in the long run.

Even well thought-through monoliths (or large codebases on which multiple teams work on at the same time) are hard to reason about. The time saved initially is multiplied only to be spent on modularizing and dependencies management.

Keeping the software complexity low should be the main task of every developer. You can split a big chunk of back-end code into multiple microservices. This way, scaling one component doesn't require scaling the entire application. Errors are also easier to track and fix. Moreover, you are showing consideration for the new guy who won't be pulling his hair out trying to understand how things are connected.

Enki has had a monolithic codebase since the beginning. Now, it became increasingly difficult to manage everything in the same spot as the deployment process is tightly bounded together. Slowly, but surely, we'll drop the monolith architecture for a more parallelized approach.

While this doesn't necessarily mean monoliths can't succeed, there are some serious advantages to starting off with your project as a set of smaller components. Think big, but avoid big repositories.


---

## Practice

Can you identify an advantage of using monoliths in the following list?

???

What about one of using microservices?

???

- Common code is easily accessed.
- Easy to reason about each component's job.
- A lot of time has to be spent to properly design the system.
- Hard to scale.


---

## Revision

Can you point out the main reason for breaking up big projects into microservices?

???

- To lower complexity.
- To decrease the number of dependencies.
- To encourage the use of APIs.
- To hire more developers.


---

## Quiz

### Can you identify a property of microservices?


```javascript
Which of the following properties defines microservices?
```

 ???

- Modularity
- Tight coupling
- Anonymity
- Low computational power
