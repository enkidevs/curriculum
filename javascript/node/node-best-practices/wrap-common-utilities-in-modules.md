---
author: mihaiberq
type: normal
category: how-to
tags:
  - introduction
links:
  - >-
    [Use NPM to distribute your
    code](https://github.com/i0natan/nodebestpractices/blob/master/sections/projectstructre/wraputilities.md){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Wrap Common Utilities in NPM Packages


---

## Content

A monolith is built around some code shared by all the components. If you decide to break up the monolith, every new module would require some part of the shared code. Database models, helper functions, constants, wrappers, etc. are some examples of shared resources.

Long time ago, the answer was to duplicate the commons for each new module. Luckily, `npm` (Node Package Manager) solves that issue: you can bundle your code into `npm` modules and export it across environments.

If this is not enough, you can further split the common code into multiple modules: helpers and constants in one module, database models and wrappers in another. Modularity is great!

`npm` is installed with Node by default and publishing your own packages is a piece of cake. If you want to learn more about `npm`, you can subscribe to the course on Enki.


---

## Practice

You can easily share common code between repositories by using

???

- npm
- USB stick
- Dropbox
- git


---

## Revision

In other words, breaking up mixed code into self-contained components means

???

- modularizing it
- fixing bugs
- encapsulating it
- designing it


---

## Quiz

### What is it that you usually use NPM for?


What is usually shared on NPM?

???

- Bundled code
- Cat pictures
- Bug reports
- Database keys
