---
author: nene
type: normal
category: how-to
tags:
  - shutdown
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Cancel a system shutdown


---

## Content

If you started the shutdown either via the terminal or from the GUI and then realised that you didn’t really want to do that, you can use:

```bash
shutdown -c
```

However, note that if the shutdown has already started, it may be too late to cancel it.

Another command to try is :

```bash
pkill shutdown
```


---

## Revision

In order to cancel a shutdown command you can use `shutdown -c` or ???

- pkill shutdown
- kill shutdown
- shutdown -pkill
