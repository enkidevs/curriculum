---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - public

  - private

  - key

  - ssh-keygen




---

# Extracting the `public key` from the `private key`

---

## Content

The `-y` option of the `ssh-keygen` tool outputs the public key:

```
$ ssh-keygen -y -f ~/.ssh/id_rsa \
> ~/.ssh/id_rsa.pub
```

Here, the `-f` flag specifies the _input keyfile_ - `~/.ssh/id_rsa` - the private key file.

The output is _redirected_ to the public key file, `~/.ssh/id_rsa.pub`.

A truncated example of a public key:

```
ssh-rsa AAAA..../VqDjtS5 user@pc
```

The _public key_ can then be used as a way to connect through SSH, only that the user has to prove it has the paired _private key_ or the server won't allow access.

---

## Revision

Extract the _public key_ from your _private ssh key_:

```
$ ??? ??? ???
          ???
```

- `ssh-keygen`
- `-y`
- `-f`
- `~/.ssh/id_rsa`
- `~/.ssh/id_rsa.pub`
- `-p`
- `cat`
