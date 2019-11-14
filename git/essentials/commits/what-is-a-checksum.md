---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:
  - introduction
  

links:

  - '[Getting Started Git Basics](http://git-scm.com/book/en/v2/Getting-Started-Git-Basics){website}'


---

# What is a checksum?

---
## Content

In git a **checksum** is a **SHA-1 hash**, which is a 40-character string of hexadecimal characters. 

For example:
```
 34c1ff6572152887ba477c52f8696dc0a1c03491
```
Git refers to everything stored in the database by a checksum that it calculates based on the contents of the file or directory structure. 

When you commit some changes, git produces a checksum referring to that commit. 

By using checksums git can detect if you've lost information or if a file is corrupt.

In most places you can use a shorter version which is a 7-character hex string: `34c1ff6`

---
## Revision

Git *hashing* is based on the ??? of a file or directory structure .

* content
* name
* date of creation

 
