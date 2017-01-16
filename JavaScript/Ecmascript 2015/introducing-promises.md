# Introducing Promises
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

A **promise** is an object that represents a value that may or may not be obtained in the future and can be passed around like any other object.

You may have come across promises in JavaScript before either in the language itself, libraries such as jQuery (which some would argue are not really promises) and languages such as q or rsvp.

Some of these libraries conform (and add their own additional functionality as well) to a specification called **Promise/A+**. ES6 bases its promise implementation on this specification.

**Why use promises?**

It is common in JavaScript to perform tasks that do not complete immediately – for example making an ajax call. It wouldnt be very efficient every time we wanted to do this we had to stop everything else on the page to wait for the result.

One way of approaching this problem is to use callback functions. A callback function is called when the original task has completed.

Callbacks work great for simple scenarios but with more complex scenarios things get complex and out of control quickly - for example when you need to handle more complex flow conditions such as multiple callbacks and exceptions.

A better approach is to use promises lets see how to do this next.

---
