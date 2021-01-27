---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - public
  - private
  - key
  - ssh-keygen
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Extracting the `public key` from the `private key`


---

## Content

The `-y` option of the `ssh-keygen` tool outputs the public key:

```bash
ssh-keygen -y -f ~/.ssh/id_rsa \ 
> ~/.ssh/id_rsa.pub
```

Here, the `-f` flag specifies the *input keyfile* - `~/.ssh/id_rsa` - the private key file.

The output is *redirected* to the public key file, `~/.ssh/id_rsa.pub`.

A truncated example of a public key:

```bash
ssh-rsa AAAA..../VqDjtS5 user@pc
```

The *public key* can then be used as a way to connect through SSH, only that the user has to prove it has the paired *private key* or the server won't allow access.


---

## Revision

Extract the *public key* from your *private ssh key*:

```bash
??? ??? ??? 
    ???
```

- `ssh-keygen`
- `-y`
- `-f`
- `~/.ssh/id_rsa`
- `~/.ssh/id_rsa.pub`
- `-p`
- `cat`
