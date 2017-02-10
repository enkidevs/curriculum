# What is NodeJS?
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

links:

- '[nodejs.org](https://nodejs.org/en/)'

---
## Content

Node.js is an extremely powerful JavaScript framework which was built upon Google Chrome’s V8 JavaScript engine. It provides an asynchronous[1], event driven, I/O based cross-platform runtime environment for the development of server-side JavaScript applications.

Node can be used to build a variety of applications including single and multi-page web applications, real-time chat applications, command line applications and more. There are a number of advantages associated with Node.js:

- It is free to download and to use and allows entire server side applications to be built only using JavaScript.
- Due to Node.js being a lightweight framework it includes the bare minimum number of required modules, consequently improving running speeds and performance. It also allows for external code to be included in case the code is useful for the application being built.
- Node performs faster than other frameworks because it’s asynchronous by default.
- It’s a cross-platform framework which runs on Windows, Mac and Linux.

---
## Practice

What can Node be used to create?
???

* server-side applications
* client-side applications

---
## Revision

Is Node synchronous or asynchronous?
???

* asynchronous
* synchronous



---
## Footnotes

[1:Asynchronous]
Even though JavaScript is single threaded, V8 JavaScript engine is not. In order to resolve functions that would be holding back the main thread, Node sends those instructions to the engine through *APIs* and subscribes to an event that marks the end of the computation for that process, through an event loop.

The result is then reintroduced into the JavaScript main runtime stack. This whole process is what makes the Node environment *asynchronous*.
