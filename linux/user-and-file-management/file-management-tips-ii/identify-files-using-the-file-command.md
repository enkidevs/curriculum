---
author: tuwidc
type: normal
category: feature
tags:
  - file
  - filetype
  - terminal
  - linux
notes: >-

  `file` tests each argument in an attempt to classify it. There are three sets
  of tests, performed in this order: filesystem tests, magic tests, and language
  tests.

  The first test that succeeds causes the file type to be printed.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Identify files using the `file` command


---

## Content

Quickly identify the type of a file using the `file` command:

```bash
file /bin/bash
/bin/bash: ELF 64-bit LSB executable,x86-64,
 version 1 (SYSV), dynamically linked

file zte.py
zte.py: ASCII text executable

file messaggi.zip
messaggi.zip: Zip archive data, at least 
 v1.0 to extract
```


---

## Revision

A valid output of the `file` command is:

```bash
file script.py
???
```

- `script.py: ASCII text`
- `-rw-rw-r-- 1 owner group 2048 19 Nov 2014 script.py`
- `# script.py content`
