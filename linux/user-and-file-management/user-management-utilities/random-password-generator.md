---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - random
  - password
  - generator
  - workout
links:
  - '[Base64 Encoding](https://en.wikipedia.org/wiki/Base64){website}'
  - >-
    [openssl rand
    manpage](https://www.openssl.org/docs/man1.0.2/man1/rand.html){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Random password generator


---

## Content

You can generate passwords in the terminal in many ways. Two of them are listed below.

Using `openssl`:

```shell
openssl rand -base64 32
WkY+q7Z5YmiHTrpV0lwtSApbepky1BNWc1s1E7lFcpY=
```

Here's what happens in this command:

- `rand` tells `openssl` to generate a random sequence
- `-base64` tells `openssl` to base64-encode the output (check the *Learn More* section for more details)
- `32` tells `openssl` that the random sequence should have 32 bytes

Using `pwgen`:

```shell
pwgen -s 40
hAZmJQZkAf44F3Zoazl7II8bv07e5ta2COmFQdjK
```

By default `pwgen` generates pronounceable passwords.  The `-s` option tells `pwgen` to generate completely random, secure password instead (containing only letters and numbers).  `40` is the length of password to generate.

By using the `-y` option we can tell `pwgen` to also include symbols in the password:

```shell
pwgen -s -y 40
i^^iAa5o^oc["+43[G]{62&S!&Mt:L]ny7qbR~g0
```


---

## Practice

Generate a random 20 chararacters password using `pwgen` :

```bash
??? ??? ???
```

- `pwgen`
- `-s`
- `20`
- `openssl`
- `40`


---

## Revision

You can generate a 30 characters password with `openssl` by running:

```bash
??? ??? -base64 30
```

- `openssl`
- `rand`
- `sudo`
- `genran`
