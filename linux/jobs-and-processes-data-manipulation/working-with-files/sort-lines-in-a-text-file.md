---
author: catalin
type: normal
category: how-to
links:
  - '[www.computerhope.com](http://www.computerhope.com/unix/usort.htm){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# sort Lines in a Text File


---

## Content

The Linux and Unix `sort` command is used to sort content in text files line by line.

Let's say we have the file `enki.txt` with the content:

```plain-text
we
are 
enki
```

The `sort` command will sort lines alphabetically and output the result:

```bash
sort enki.txt
# are 
# enki 
# we
```

Using the `-o` we can specify an output file:

```bash
sort -o enki_sorted.txt enki.txt
cat enki_sorted.txt
# are
# enki
# we
```

To sort in reverse use the the `-r` flag:

```bash
sort -r enki.txt
# we
# enki
# are
```

Other flags are available such as `-c` that will only check if the file is sorted.


---

## Practice

Sort the file `enki` in reverse and output it to `output_enki`:

```bash
??? ??? ??? output_enki enki
```

- `sort`
- `-r`
- `-o`
- `-re`
- `-f`
- `-to`


---

## Revision

Check if the `enki` file is sorted:

```bash
??? ??? enki.txt
```

- `sort`
- `-c`
- `-r`
- `awk`
- `nl`
