---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction
  - obscura
  
inAlgoPool: false


links:

  - '[What Is Git](https://www.atlassian.com/git/tutorials/what-is-git/){website}'


---

# What is Git?

---
## Content

**Git**[1] is the name of the most widely used *Distributed Version Control System* and is the standard of version control for both commercial and open source projects.

Fundamental to the Git nature, being a *DVCS*, is the fact that people working on a project will always have a local copy of the project, the repository, containing the full history of changes. This remote backup of the codebase entails a good layer of protection against data loss.

One other characteristic of **Git** that helps it differentiate from other version control systems is security. The content of files, the relationship between them among other **Git**-specific objects are secured by cryptographic hashing with the `SHA1`[2] algorithm.

Different from some *VCS*s, **Git** versioning (the way it keeps track of different versions of a file) is not based on the names of the files, but on the content of the file itself.

As a result of high raw performance from its specialized algorithms, as well as being smart and flexible, **Git** has become the de facto standard of version control.

---
## Practice

What is **Git**'s versioning based on?

???

* Content of the file
* Name of the file
* Both

---
## Revision

What type of VCS is Git?

???

* DVCS
* CVCS
* LVCS
* Mix of CVCS and LVCS

---
## Footnotes
[1:name origin]
Linus Torvalds is the creator of the original Linux kernel, but also of **Git** in 2005, a term which in British English slang refers to a stupid or unpleasant person.

Tovarld once said: "I'm an egotistical bastard, and I name all my projects after myself. First `Linux`, now `git`".

[2:SHA1]
SHA-1 (Secure Hash Algorithm 1) was designed by the United States National Security Agency, having been the standard for hashing algorithm in IT.
 
