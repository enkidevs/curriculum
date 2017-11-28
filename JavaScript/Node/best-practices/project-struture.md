# Node Best Practices: Project Structure
author: milesflo

levels:

  - basic

  - advanced

type: normal

category: best practice

standard: js.identify-common-design-patterns

links:

  - [Project Structure Practices](https://github.com/i0natan/nodebestpractices#1-project-structure-practices)

---
## Content

A well organized code base can be maintained for decades after its inception as long as critical organization decisions are made early and enforced. One such design practice we're going to go over today is known as __Separation of Concerns__. __Separation of Concerns__ is the idea that my program should be separated into distinct sections or components, such that each section addresses a separate concern of my application.


Imagine that I were designing an app that has a web client and an API...

I _could_ have all of my routing, file serving, and API logic in a single, monolithic `app.js` file. While the application would still technically function, there are many problems with this approach. For one, adding, changing, and removing features becomes increasingly tedious as your code base grows in size.

Instead, I would want to divide concerns for my API and my web client into different subdirectories and import them into my main `app.js` script with `require()` statements. Organizing my files in such a way allows me to jump to where I need to in my project faster, without having to scroll through thousands of lines of code.

![Separation of Concerns](https://github.com/i0natan/nodebestpractices/blob/master/assets/images/structurebycomponents.PNG?raw=true)

You could take the Separation of Concerns principle even further by managing these separate modules with independent git repositories, or [creating NPM packages](https://docs.npmjs.com/getting-started/creating-node-modules) of useful code snippets for use in other projects.

---
## Practice

Which of these functions will import a package into your NodeJS project?
???

* `require()`
* `include()`
* `load()`
* `npm.import()`

---
## Revision

If you are following __Separation of Concerns__, you should ???.

* separate your project into different files/directories as clearly defined components
* divide your code base into large parts, separated by comments
* focus on the core mechanics of your project first, then add features
