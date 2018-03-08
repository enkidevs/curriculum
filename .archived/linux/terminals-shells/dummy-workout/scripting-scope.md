# Scoping in Scripts
author: mihaiberq

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

---
## Content

Normally, the value `echo`d would be 2. However, the last command inside brackets (`{ }`), must end in a `;`. Otherwise, an EOF (end of file) error is thrown.

---
## Quiz

headline: what is the output of the following script?

question: |
  #!/bin/bash
  a=1
  { a=2 }
  echo $a

answers:
  - "Error: unexpected end of file"
  - 1
  - 2
  - $a
