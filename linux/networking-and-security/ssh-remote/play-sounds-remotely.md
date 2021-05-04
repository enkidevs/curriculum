---
author: catalin
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Play sounds remotely


---

## Content

You can play a local file on a remote machine using the powerful combination of `ssh` and piping.

However, you must have the permission to do that. This is by default `true` on most distros (including **Ubuntu**), but for example on **Fedora** you must be logged in on the server.

The command is:

```bash
ssh user@enki 'mpg321 -' < my_sound.mp3
```

This will play `my_sound.mp3` on the remote machine. 

In this example, using `mpg321 -` is specific for `mp3` files. Other common variants are `ogg123`, `aplay` or `mplayer`.


---

## Revision

You can decode `.mp3` in terminal with

??? package.

- mpg321
- music
- mplay
- sound
