---
author: kapnobatai136

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  sql.choose-sql-datatype.1: 10

tags:

  - introduction

  - workout




aspects:
  - introduction
  - workout
  - deep


---

# Collation

---
## Content

In the previous insight we discussed internationalization together with *encoding*. The next logical question is: when sorting results alphabetically, should `é` come before `f` or after `z`? What about `カ` or `😊`?

This aspect of database design is called localization, and the solution to this problem is represented by *collation*.

**Collation** means collecting and combining pieces of written information. It is the reason why `é` (whose ASCII code point is 130) is seen as another type of `e` and not something that comes after `z` (122 in ASCII) in a clause that sorts results by a string field.

For this reason, each language has its own collation rules. Most of the time, the table default collation rule is deduced based on the locale settings (`en_US`, `fr_FR`, etc.). However, specific rules can be set for columns and even operations.

---
## Revision

Match the description to the term it refers to:
```
Used to group accented characters with
their base character.
???

A function that maps bits to characters.
???
```

* collation
* encoding
