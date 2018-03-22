# Script Variables
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

While the snippet won’t throw an error, it own’t echo scripting either but 0. The let keyword is equivalent to (( )) and it only works for arithmetic expressions. The output is 0 because let will evaluate strings as 0.

---
## Quiz

headline: what is to be changed in the following snippet for it to echo 'scripting'?

question: |
  #!/bin/bash
  let "s=scripting"
  echo $s

answers:
  - not to use let for string assignment
  - to quote $s
  - to enclose $s in ${}
  - the snippet will echo 'scripting'
