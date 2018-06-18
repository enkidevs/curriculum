---
author: tuwi.dc

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

tags:

  - sed

  - linux

  - terminal

  - delete empty lines

  - regex



notes: ''

---

# Intro to `sed`

---
## Content

`sed` (short for "stream editor") is a Unix utility command that parses and transforms text using a simple, compact language. 

```
$ sed 's/cat/dog/' old_file > 
             new_file
```

Will replace the first of occurrence of "cat" (in each line) by "dog".

To replace the 5 first occurrences of "cat": 
```
$ sed 's/cat/dog/5' old_file > 
             new_file
```

To replace all of the occurrences:

```
$ sed 's/cat/dog/g' old_file >
             new_file
```

We can also refine the condition to substitute "cat" with "dog" **only** in the lines which contain "dragon":

```
$ sed '/dragon/s/cat/dog/g' 
         old_file > new_file
```

Or to substitute "cat" with "dog" **except** in the lines which contain "dragon":

```
$ sed '/dragon/!s/cat/dog/g'
         old_file > new_file
```

To delete blank lines:
```
$ sed '/^$/d' old_file > new_file
```

---
## Practice

Complete the following command to replace *cat* with *rat* from lines which contain *dog* as well:
```
$ ??? ??? 
       animals > animals1
```  

* `sed`
* `’/dog/s/cat/rat/g’`
* `’/s/cat/dog/g’`
* `’/dog/!s/cat/rat/g’`
* `des`

---
## Revision

To replace all the occurrences of a word, you would most likely use the

???

* `g` flag
* `all` flag
* `l` flag
* `0` flag

 
