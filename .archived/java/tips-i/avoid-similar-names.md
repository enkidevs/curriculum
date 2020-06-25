---
author: adamMontgomerie

levels:

  - basic

  - beginner

type: normal

category: tip

aspects:

  - introduction

  - obscura

tags:

  - naming-conventions

links:

  - '[javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2014/10/10-java-best-practices-to-name-variables-methods-classes-packages.html){website}'

---

# Avoid similar names

---
## Content

When naming variables or other things which you must give a name to, it is usually best to avoid creating them with similar names.

For example, if you have two variables, one called `customer` and another called `customers`, the chance of accidentally using the wrong one is much higher than if they were given more distinct names.

Even if no bugs are created, the code will be much harder to read when you or another programmer returns to maintain it.