---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - bash

  - awk

  - sort

  - duplicates

  - terminal



notes: ''

---

# Get rid of duplicate lines

---
## Content

Here is a one liner tip for you:
```
$ awk '!(count[$0]++)' file_to_filter

```
This is using `awk` to print the first occurrence of every line, no matter how many times the same line would appear afterwards - `{print}` is the default instruction.

When a line is read (`$0` references the current line), it adds to an array that keeps track of the number of occurrences.

The first time a line is met, awk prints it because `!0` is the equivalent of `true`. If the line was met before, `!count[line]` will only output `false`, therefore it won't be printed again.



Or if you don't mind sorting your lines:

```
$ sort file_to_filter | uniq
```

If *file_to_filter* contains:
```
cookie
cookie
doughnut
cake
croissant
cake
```
The output will be:
```
#awk
cookie
doughnut
cake
croissant

#sort
cake
cookie
croissant
doughnut
```

---
## Revision

Sorting the lines of a file in order to get rid of the duplicates can be done using :
```
$ ??? file_to_filter | ???
```

* `sort`
* `uniq`
* `unique`
* `sed`

 
