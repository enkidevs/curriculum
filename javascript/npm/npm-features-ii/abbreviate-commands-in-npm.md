---
author: catalin
type: normal
category: feature
tags:
  - obscura
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Abbreviate commands in npm


---

## Content

`npm` uses `abbrev` program to provide abbreviations for its commands. Shorthands for most common commands are also available.

Useful abbreviations:

```bash
npm i myPackage
# same as npm install myPackage
npm r myPackage / npm rm myPackage
# same as npm uninstall myPackage
npm ln
# same as npm link
npm ls
# same as npm list
npm bn
# same as npm bundle
npm up
# same as npm update
npm c
# same as npm config

```

In addition, `npm` uses **tab completion** which can be modified in the `npm-completion.sh` script file located in the `npm` source folder.


---

## Practice

What's the equivalent abbreviated command of `npm link`?

???

- npm ln
- npm lk
- npm l
- npm k
- npm n


---

## Revision

What's the equivalent abbreviated command of `npm link`?

???

- npm ln
- npm lk
- npm l
- npm k
- npm n
