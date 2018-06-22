---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

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


aspects:
  - workout


---

# Random password generator

---
## Content

You can generate passwords in the terminal in many ways. Two of them are listed below.


Using `openssl`:

```shell
$ openssl rand 32 -base64
WkY+q7Z5YmiHTrpV0lwtSApbepky1BNWc1s1E7lFcpY=
$
```

The `rand 32` option tells `openssl` to generate a random sequence of 32 bytes and `-base64` tells `openssl` to base64-encode the output (see the link at the end for details).

Using `pwgen`:

```shell
$ pwgen -s 40
hAZmJQZkAf44F3Zoazl7II8bv07e5ta2COmFQdjK
$
```

By default `pwgen` generates pronounceable passwords.  The `-s` option tells `pwgen` to generate completely random, secure password instead (containing only letters and numbers).  `40` is the length of password to generate.


By using the `-y` option we can tell `pwgen` to also include symbols in the password:

```shell
$ pwgen -s -y 40
i^^iAa5o^oc["+43[G]{62&S!&Mt:L]ny7qbR~g0
$
 
```

---
## Practice

Generate a random 20 chararacters password using `pwgen` :
```
$ ??? ??? ???
```

* `pwgen`
* `-s`
* `20`
* `openssl`
* `40`

---
## Revision

You can generate a 30 characters password with `openssl` by running:
```
$ ??? ??? -base64 30
```

* `openssl`
* `rand`
* `sudo`
* `genran`

 
