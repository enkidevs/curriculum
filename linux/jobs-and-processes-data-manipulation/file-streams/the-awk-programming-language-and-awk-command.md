---
author: jfarmer
type: normal
category: must-know
links:
  - '[AWK one-liners](http://www.pement.org/awk/awk1line.txt){website}'
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The AWK Programming Language And awk Command


---

## Content

AWK is a programming language for processing text files.  It views text files as a big table of data where the rows are records and the columns are fields.  By default AWK will treat each line as a record and each word in a line as a field, although one can change that behavior.

It provides functionality for matching records and taking action against the fields in those records when a match is found.  For example, one could write an AWK program that printed out the third field in every record.

The `awk` command implements the AWK language and is a common tool for displaying or transforming textual data.  To illustrate how general `awk` is, many special-purpose text manipulation programs like `head`, `tail`, `sed`, and `cut` can be implemented as a small AWK script.

### Displaying Specific Columns

Selecting and formatting specific columns of text is probably the most common use of `awk`.  For example, this will print out the 1st and 6th fields from `/etc/passwd` (which are the username and home directory fields, respectively):

```shell
awk -F':' '{print $1,$6}' /etc/passwd
user1 /home/user1
user2 /home/user2
... (other lines) ...
```

The `-F` switch tells `awk` to use `:` as the field separator instead of the whitespace default.  The string `'{print $1,$6}'` is the actual AWK code.


---

## Practice

If you have a file with lines that look like this:

```plain-text
// clothing   expected    recieved   price
T-shirts      200         150       10.00
Jeans         300         299       29.99
```

Write an `awk` script that would calculate, for each line, the money left from the products not being received. Assume that you are using the default whitespace separator:

```bash
awk '{??? ???}' ~/shipment_track
500.00
29.99
```

- `print`
- `($2-$3)*$4`
- `(&2-&3)*&4`
- `(&1–&2)*&3`
- `stdout`


---

## Revision

Which of the following commands cannot be simulated using an `awk` script? 

???

- mv
- sed
- head
- cut
