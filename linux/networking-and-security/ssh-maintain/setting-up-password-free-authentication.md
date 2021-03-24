---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - ssh
  - rsa
  - pasword-less
  - ssh-copy-id
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Setting up password-free authentication


---

## Content

To set up password-free authentication start by generating a pair of keys:

```bash
ssh-keygen -t rsa

Generating public/private rsa key pair.
Enter file in which to save the
             key (~/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
```

After you choose a path and a password, you can see the generated key by running:

```bash
cat ~/.ssh/id_rsa.pub
```

All is left to do is to copy your key to the server:

```bash
cat ~/.ssh/id_rsa.pub |
  ssh user@hostname 'cat >>
      ~/.ssh/authorized_keys &&
      chmod 700 ~/.ssh/ &&
      chmod 600 ~/.ssh/authorized_keys'
```

The command will make you connect to the server, paste your key into the *authorized_keys* file on the server and ensure that you are the only one who can access the file by setting up permissions.

The permission part is necessary, otherwise the server won't recognize your key when trying to connect.

You will then be able to log in without introducing a password:

```bash
ssh user@hostname
```

Some distributions may have the `ssh-copy-id` utility that makes the process easier:

```bash
ssh-copy-id user@hostname
```


---

## Practice

Complete the following code snippet such that, by running it, a SSH `rsa` key pair is generated:

```bash
??? -t ???
```

- `ssh-keygen`
- `rsa`
- `ssh`
- `keygen`
- `sshKeygen`
- `generate`
- `ssh-rsa`
- `public`
- `private`
- `--pair`


---

## Revision

The file on the server in which to add your ssh key to set up password-less authentication is

???

- `~/.ssh/authorized_keys`
- `~/ssh/authorized_keys`
- `~/ssh/keys`
