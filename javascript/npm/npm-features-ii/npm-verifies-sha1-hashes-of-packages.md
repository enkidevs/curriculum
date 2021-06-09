---
author: catalin
type: normal
category: feature
tags:
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `npm` verifies `sha1` hashes of packages


---

## Content

When your *Node.js* app is compiled with **openssl crypto** support, `npm` package manager  provides automatic  **checksumming** support.

Since version `0.2.9` of npm, **sha1 hashes** get generated for all packages as they're published:

```bash
npm publish myProject
```

They are also verified after they are downloaded by other users.

In case an error occurs during downloading, or if something gets corrupted in transit, `npm` will **refuse to proceed** with the installation.

Checksumming in `npm` is completely silent and provides another layer of security for all packages.


---

## Practice

What will happen when downloading a corrupted npm package?

???

- npm will refuse and stop the installation
- npm will continue
- npm will continue, but will show warnings
- npm will crash your system


---

## Revision

To ensure the security of published modules, **sha1 hashes** are generated automatically when for your NodeJS project. When are these hashes created?

???

- on publish
- when you run it
- when the folder is accessed
- When it is uploaded
- When it is compiled
