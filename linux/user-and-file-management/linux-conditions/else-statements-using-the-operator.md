---
author: nene
type: normal
category: must-know
tags:
  - chaining operators
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `else` statements using the `||` operator


---

## Content

The `OR` operator (`||`) allows you to execute the second command *if and only if* the first command fails.

```bash
cd ~/
mkdir newFolder
mkdir newFolder || cd newFolder
```

For example, if you try to run `mkdir newFolder` when the folder already exists, the command fails and the next one is executed:

```bash
mkdir: cannot create directory 'newFolder':
                        File exists
user@pc:~/newFolder # cd'd into it
```


---

## Revision

Consider:

```bash
rm enki || echo 'fail'
```

`||` will execute the second command if and only if 

??? .

- the first command fails
- the first command succeeds
- "enki" is already installed
