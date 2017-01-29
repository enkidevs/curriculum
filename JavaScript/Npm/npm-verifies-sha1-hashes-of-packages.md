# `npm` verifies `sha1` hashes of packages
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: check-data-about-a-package

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
