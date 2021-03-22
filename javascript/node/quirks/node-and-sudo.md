---
author: catalin
type: normal
category: caveats
tags:
  - introduction
  - workout
  - obscura
  - deep
notes: >-
  This insights is also based on security - should be on a security workout I
  guess.
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Node and `sudo`


---

## Content

```bash
sudo node myapp.js
```

You should never do this. Most people that embrace running Node with superuser rights do it with the intention of allowing their **HTTP** server `listen()` on either port `80` or `443`.

If a bug or an error occurs in your application process it can **bring the whole system down** because it has the credentials to do **anything** on your system.

The most usual workaround for this is to set up a **HTTP server** / **proxy** to forward the request. This can be easily done with **nginx**, **Apache** or other tools.

Another workaround in Linux is to use the `libcap2-bin` package:

```bash
sudo apt-get install libcap2-bin
sudo setcap cap_net_bind_service=+ep
/path/to/node
```


---

## Practice

Should you give your node process permissions to your whole system?

???

- no
- yes
- only if you need port 80 for http
- only if you need port 443 for http


---

## Revision

Is running **Node** with `sudo` considered a safe practice?

???

- no
- yes
