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


---

# Encoding and Collation

---
## Content

When it comes to storing and manipulating string fields, two questions come to mind:
- What if the characters are not part of the Latin alphabet, e.g. Korean, Russian or even emojis?
- When sorting results alphabetically, should 'é' come before 'f' or after 'z'? What about 'カ' or '😊'?

Internationalization and localization are important aspects of database design which require more and more attention. Luckily, these problems can be prevented by using the right *encoding* and *collation*.

### Encoding

You can see the **encoding** of a system as a function that maps groups of bits to a character. One of the first encodings was ASCII: it maps characters to a numeric value and it can represent up to 127 characters - 'A' maps to 65, 'a' to 97, etc. Extended ASCII can be used to represent up to 255 characters.

As you can imagine, 255 characters isn't nowhere near enough to map every symbol of every alphabet in the world. For reference, only in the first emoji tab ('Smileys and People') there are around 180 emoticons. This was an issue that had to be dealt with quickly.

And it was. The current standard is *Unicode* (*Universal Coded Character Set*) which includes close to 137,000 characters, stored using 1 to 4 bytes. There are three types of Unicode encodings:
- UTF-8: 1-4 bytes encoding which maximizes compatibility with ASCII
- UTF-16: 1-2 groups of 2 bytes (hence the 16)
- UTF-32: 4 bytes encoding

While all three encodings are viable, the one that over 90% of all web pages are using is `UTF-8`. Its variable size and compatibility with previous standards made it the best choice.

### Collation

**Collation** means collecting and combining pieces of written information. It is the reason why 'é' (whose ASCII code point is 130) is seen as another type of 'e' and not something that comes after 'z' (122 in ASCII) in a clause that sorts results by a string field.

For this reason, each language has its own collation rules. Most of the time, the table default collation rule is deduced based on the locale settings (`en_US`, `fr_FR`, etc.). However, specific ones can be set for columns and even operations.

---
## Practice

As of now, the most recommended character encoding is

???


* UTF-8
* UTF-16
* UTF-32
* ASCII

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

 
 
