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

# Conditional command execution ( `&&` operator)


---

## Content

Use the `&&` operator to execute two consecutive commands in order.

The second command will only be executed if the first one is successful.

```bash
mkdir newFolder && cd newFolder
```

The above creates *newFolder* and cd into it.


---

## Revision

`&&` operator is used to execute a second command if the first one ???

- succeeds
- fails
- is not found
