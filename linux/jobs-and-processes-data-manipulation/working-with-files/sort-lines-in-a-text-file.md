---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to


links:

  - '[www.computerhope.com](http://www.computerhope.com/unix/usort.htm){website}'


---

# `sort` lines in a text file

---
## Content

The Linux and Unix `sort` command is used to sort content in text files line by line.

Let's say we have the file `enki.txt` with the content:
```
we
are 
enki
```

The `sort` command will sort lines alphabetically and output the result:
```
$ sort enki.txt
are 
enki 
we
```

Using the `-o` we can specify an output file:
```
$ sort -o enki_sorted.txt enki.txt
$ cat enki_sorted.txt
are
enki
we
```

To sort in reverse use the the `-r` flag:
```
$ sort -r enki.txt
we
enki
are
```

Other flags are available such as `-c` that will only check if the file is sorted.

---
## Practice

Sort the file `enki` in reverse and output it to `output_enki`:
```
$ ??? ??? ??? 
          output_enki enki
```


* `sort`
* `-r`
* `-o`
* `-re`
* `-f`
* `-to`

---
## Revision

Check if the `enki` file is sorted:
```
$ ??? ??? enki.txt
```

* `sort`
* `-c`
* `-r`
* `awk`
* `nl`

 
