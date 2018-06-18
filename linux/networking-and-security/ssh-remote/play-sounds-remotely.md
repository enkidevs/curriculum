---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to



parent: ssh-pipes

---

# Play sounds remotely

---
## Content

You can play a local file on a remote machine using the powerful combination of `ssh` and piping.

However, you must have the permission to do that. This is by default `true` on most distros (including **Ubuntu**), but for example on **Fedora** you must be logged in on the server.

The command is:
```
$ ssh user@enki 'mpg321 -' < my_sound.mp3
```

This will play `my_sound.mp3` on the remote machine. 

Obviously using `mpg321 -` is particular to `mp3` files. Other common variants are `ogg123`, `aplay` or `mplayer`.

---
## Revision

You can decode `.mp3` in terminal with

??? package.

* mpg321
* music
* mplay
* sound

 
