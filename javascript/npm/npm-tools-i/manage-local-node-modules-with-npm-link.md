---
author: catalin
type: normal
category: feature
tags:
  - workout
  - introduction
links:
  - '[docs.npmjs.com](https://docs.npmjs.com/cli/link){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Manage local node modules with `npm link`


---

## Content

A modular Node.js application often implies the usage of certain local modules.

To support subsequent modification of those modules and to not need to go through re-installations or code changes one can use the `npm` commmand `npm link`. This will create a *symbolic link* between packages.

The whole linking process consists of two steps, the first being declaring a module as a global link. This is done by running :

```bash
npm link
# must be run in the root module folder
```

Secondly, to install the linked modules in the target app using the following command:

```bash
npm link myImportedModule
```

This method fails when you have a local module depending on another local module:

```plain-text
modules/moduleOne
modules/moduleTwo -> depends on moduleOne
app/
```

To solve this steps must be taken:

```bash
cd modules/moduleOne
npm link
cd modules/moduleTwo
npm link moduleOne
npm link
cd app/
npm link moduleTwo
```


---

## Practice

Which of the following statements is false about `npm link`?

???

- uses the online npm registry to link global packages
- creates a symbolic link between packages
- allows easier local development when working with multiple libraries
- allows you to use a local library without reinstalling it after each time


---

## Revision

Consider your main application relies on an external library `myLibrary` you have access to. The latter one requires some modifications too, but it would be to menial to reinstall it with each change.

Which npm command can you use to make you application use your local version of the library?

```bash
npm ???
```

- link myLibrary
- link
- --use-local:myLibrary
- --local:myLibrary
- --use-local=myLibrary
- --local=myLibrary
