---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [More About the Snowden
    Effect](http://whatis.techtarget.com/definition/Snowden-effect){website}
  - >-
    [More on
    SSH](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server-in-ubuntu){website}
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

# What is SSH?

---

## Content

SSH, the acronym for _Secure Socket Shell_, is a protocol that provides a safe way of accessing _remote systems_.

It ensures _strong authentication_ and _secure encrypted data transfer_ between two computers over a possible insecure Internet connection.

> 💡 By default, SSH will use the file `~/.ssh/id_rsa` as the private key[1] for verifying access.

An SSH connection can be established through the use of the following 3 utilities:

- `ssh`: the CLI
- `slogin`: alias for ssh, accepting the same flags
- `scp`: secure copy, the encrypted version of `cp`

Here's a typical way of establishing an SSH connection to a remote server:

```bash
ssh your_username@host_ip_address
```

> 💡 Typically, an SSH server listens on the standard TCP port 22.

If the username on your local machine matches the one on the server you are trying to connect to, you can just type:

```bash
ssh host_ip_address
```

SSH is included by default in Linux, Unix-like and OSX operating systems, but not in Windows.

---

## Practice

Which port does SSH typically use?

???

- 22
- 80
- 443
- 3000

---

## Revision

What are the three utilities SSH comprises?

???

- ssh, slogin, scp
- rlogin, ssh, rcp
- rlogin, rsh, rcp

---

## Footnotes

[1: SSH Private and Public Keys]

In SSH, the public and private keys work such that anyone with a copy of the public key can encrypt data which can then only be read by the person who holds the corresponding private key.

> 💡 Your private key shouldn't be shared with anyone.

The simplest way to generate a public/private key pair is to run `ssh-keygen` without arguments.

Here's an example of the output:

```
ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/enki/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/enki/.ssh/id_rsa.
Your public key has been saved in /home/enki/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:Up6KjbnEV4Hgfo75YM393QdQsK3Z0aTNBz0DoirrW+c enki@example
The key's randomart image is:
+---[RSA 2048]----+
|    .      ..oo..|
|   . . .  . .o.X.|
|    . . o.  ..+ B|
|   .   o.o  .+ ..|
|    ..o.S   o..  |
|   . %o=      .  |
|    @.B...     . |
|   o.=. o. . .  .|
|    .oo  E. . .. |
+----[SHA256]-----+
```

The default file name for the keys depends on the algorithm. In this case `id_rsa` is used because we're using the default RSA algorithm.

