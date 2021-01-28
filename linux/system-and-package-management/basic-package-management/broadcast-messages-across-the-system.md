---
author: tuwidc
type: normal
category: how-to
tags:
  - bash
  - write
  - wall
  - broadcast
  - messages
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Broadcast messages across the system


---

## Content

To broadcast a message to all users logged in the system, you can use the `wall` command:

```plain-text
echo "pulling the project" | wall 
```

The users will then see:

```plain-text
Broadcast Message from userd 
   (/dev/pts/4) at 16:40 ...
pulling the project
```


---

## Revision

This command allows you to broadcast a message to all users logged in to the system :

???

- `wall`
- `shout`
- `bcast`
