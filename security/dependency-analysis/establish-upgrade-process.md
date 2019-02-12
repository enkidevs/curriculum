---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

  - advanced

aspects:

  - introduction

  - new

  - workout

  - deep

type: normal

category: best practice


standards:
  security.analyze-dependencies.2: 10

links:
  - '[link to official documentation](https://enki.com)'
  - '[link to deeper dive blog post](https://enki.com)'
  - '[link to a video](https://enki.com)'
  - '[link to a discussion](https://enki.com)'

---

# Establish Upgrade Process

---
## Content

Once you have analyzed source code and found vulnerable components, those components need to be upgraded. Sometimes this upgrade path is simple. _If an API change occurs between the current insecure version and the next most secure version, the upgrade path will not be simple._ A good way to visualize it is, find all instances of the use of that library in the source code. For each instance, generate a random number between 1 and 256. Add up all of those numbers - that's how long it may take to update that library in minutes. 

---
## Practice

This question will be shown with the insight, and users will have just read the content.
It's best to use a code example here.

example:
Given this directory structure, change directories **from** `www/css` **to** `www/images/promo`:
```
- www
  - css
  - images
    - promo
  - js

```

`cd ???/???/???`

* ..
* images
* promo
* www
* js
* .
* ^

---
## Revision

Revision questions are shown without the insight, and users may never have seen the content. Use a code example or multiple choice question.

???

* right answer
* wrong answer
* wrong answer 2
