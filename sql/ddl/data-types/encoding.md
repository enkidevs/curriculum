---
author: mihaiberq

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

# Encoding

---
## Content

When it comes to storing and manipulating string fields, one question that comes to mind is: what if the characters are not part of the Latin alphabet, e.g. Korean, Russian or even emojis? Because internationalization is an important aspect of database design, a solution to the mentioned problem is represented by *encoding*.

You can see the **encoding** of a system as a function that maps groups of bits to a character. One of the first encodings was ASCII: it maps characters to a numeric value and it can represent up to 127 characters - `A` maps to 65, `a` to 97, etc. Extended ASCII can be used to represent up to 255 characters.

As you can imagine, 255 characters are nowhere near enough to map every symbol of every alphabet in the world. For reference, there are around 180 emoticons in the 'Smileys and People' emoji tab. This was an issue that had to be dealt with quickly.

And it was. The current standard is *Unicode* (*Universal Coded Character Set*) which includes close to 137,000 characters, stored using 1 to 4 bytes. There are three types of Unicode encodings:
- UTF-8: 1-4 bytes encoding which maximizes compatibility with ASCII
- UTF-16: 1-2 groups of 2 bytes (hence the 16)
- UTF-32: 4 bytes encoding

While all three encodings are viable, 90% of all web pages use `UTF-8`. Its variable size and compatibility with previous standards made it the best choice.

---
## Practice

As of now, the most recommended character encoding is

???


* UTF-8
* UTF-16
* UTF-32
* ASCII
