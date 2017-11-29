# Node Best Practices: Project Structure
author: milesflo

levels:

  - basic

  - advanced

type: normal

category: best practice

standard: js.identify-common-design-patterns

links:

  - >-
    [Project Structure Practices](https://github.com/i0natan/nodebestpractices#1-project-structure-practices)

---
## Content

A well organized code base can be maintained for decades after its inception as long as critical organization decisions are made early and enforced. One such design practice we're going to go over today is known as __Separation of Concerns__. __Separation of Concerns__ is the idea that a program should be separated into distinct sections or components, such that each section addresses a separate concern of the application.


Imagine that you were designing an app that has a web client and an API...

You _could_ have all of the routing, file serving, and API concerns in a single, monolithic `app.js` file. While the application would still technically function, there are many problems with this approach. For one, adding, changing, and removing features becomes increasingly tedious as your code base grows in size.

Instead, you would want to divide all of these features into different subdirectories and import them into your main `app.js` script with `require()` statements. Organizing your files in such a way allows you to jump to where you need to in a project faster, without having to scroll through thousands of lines of code. Another developer would also have an easier time reading and working with your code if it is clearly organized and labeled.

![Separation of Concerns](https://github.com/i0natan/nodebestpractices/blob/master/assets/images/structurebycomponents.PNG?raw=true)

You could take the Separation of Concerns principle even further by managing these separate modules with independent git repositories, or [creating NPM packages](https://docs.npmjs.com/getting-started/creating-node-modules) of useful code snippets for use in other projects.

---
## Practice

Why would you want to practice __Separation of Concern__?
???

* All of the above.
* Other developers will be able to more easily work with your code.
* Navigating through your code base becomes less tedious.
* Monolithic code bases are more likely to break with changes.

---
## Revision

If you are following __Separation of Concerns__, you should ???.

* separate your project into different files/directories as clearly defined components
* divide your script into large parts, separated by comments
* focus on the core mechanics of your project first, then add features
