---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - text
  - format
  - windows
  - unix
  - dos2unix
  - unix2dos
  - null
notes: a bit niche
practiceQuestion:
  formats:
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Converting between Unix and Windows text files


---

## Content

The format of Windows and Unix text files differs slightly. In Windows, lines end with both the line feed and carriage return[1], while Unix uses only a line feed[2]. 

Consequently, some Windows applications will not show the line breaks in Unix-format files. Unix programs may display the carriage returns in Windows text files with `Ctrl-M` `(^M)` characters at the end of each line. 

To convert from DOS newline to Unix:

```bash
sed 's/.$//' dos_file > unix_file
# assumes that all lines end with CR/LF
sed 's/^M$//' dos_file > unix_file
# in bash/tcsh, press Ctrl-V then Ctrl-M
```

To convert from Unix to DOS:

```bash
sed 's/$'"/`echo \\\r`/" unix_file > dos_file # bash
sed "s/$/`echo -e \\\r`/" unix_file > dos_file # ksh
sed 's/$/\r/' unix_file > dos_file
# gsed 3.02.80 or higher
```

Some distributions have access to `dos2unix` and `unix2dos` commands which simplify the job:

```bash
dos2unix DOSfile UNIXfile
unix2dos UNIXfile DOSfile
```


---

## Practice

Complete the `sed` substitute command to convert a DOS file to Unix:

```bash
sed ??? file1 > file2
```

- `'s/^M$//'`
- `'s/$/^M/'`
- `'s//M$/'`
- `'/^M/s/$//'`


---

## Revision

Converting Unix files to DOS or the other way around can be done on *all systems* using 

???.

- sed
- dos2unix
- unix2dos
- dtou


---

## Footnotes

[1:Acronym]
CR+LF = `/r/n`
[2:Acronym]
LF = `\n`
