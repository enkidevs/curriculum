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
# Comments

---
## Content

 `#` doesn't mark the beginning of a comment in none of the examples. In the first case, it will trigger a base 10 conversion of the binary `1001`, echoing 9. On the second line `#` is escaped, losing its special meaning. The third echo will print the length of the variable, which is 6. Lastly, double `##` is short-hand for stripping the longest substring of `name` matching the expression 'Jo', outputting `hnny`. 

---
## Quiz 

### in which cases does # mark the beginning of a comment?

1\. echo $(( 2#1001 ))
2\. echo This \# won't begin a comment
3\. name=Johnny; echo ${#name}
4\. name=Johnny; echo ${name##Jo}

* Neither
* 1 and 2
* 1 and 3
* 1, 3 and 4
 