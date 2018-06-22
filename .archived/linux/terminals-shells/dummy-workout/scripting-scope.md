---
author: mihaiberq

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

aspects:
  - introduction

---
# Scoping in Scripts

---
## Content

Normally, the value `echo`d would be 2. However, the last command inside brackets (`{ }`), must end in a `;`. Otherwise, an EOF (end of file) error is thrown.

---
## Quiz 

### what is the output of the following script?

#!/bin/bash
a=1
{ a=2 }
echo $a

* "Error: unexpected end of file"
* 1
* 2
* $a
 
