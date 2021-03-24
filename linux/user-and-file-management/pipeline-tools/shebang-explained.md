---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - bash
  - shebang
  - interpreter
  - workout
notes: Approved by Jordan
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Shebang `#!` explained


---

## Content

The shebang (`#!`) at the head of a script tells your system that this file is a set of commands to be fed to the indicated command interpreter. 

In order for these to work, the script must have *execute* permissions.[1]

```python
#!/bin/sh
#!/bin/bash
#!/usr/bin/perl
#!/usr/bin/tcl
#!/bin/sed -f
#!/bin/awk -f
```

Depending on the situation, we might need to run a script with a different version :

```python
#!/usr/bin/python 
#!/usr/bin/python3
```

Or :

```perl
#!/usr/bin/perl
#!/usr/bin/perl -w
```

To ensure the script is run using the first interpreter in `PATH` use `/usr/bin/env`:

```python
#!/usr/bin/env python
#!/usr/bin/env node
```


---

## Practice

What should be added to the script in order for the system to use the first `node` interpreter in `PATH` ?

```plain-text
#! ???
```

- `/usr/bin/env node`
- `/usr/bin/node`
- `/bin/sh`
- `/usr/bin/env node4`


---

## Revision

```plain-text
#!/usr/bin/python3
```

Is used to tell the system what ??? 

should be used for that particular file.

- interpreter
- script
- path


---

## Footnotes

[1:Directory permision]
The `+x` bit for a directory allows the user to `cd` into it and access its inner files.
