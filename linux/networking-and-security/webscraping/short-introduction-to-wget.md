---
author: catalin
type: normal
category: tip
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Short Introduction to `Wget`


---

## Content

`Wget` is a utility that can work better than a browser when it comes to downloading pages or files from the web and even for synchronizing local web archives. 

It's really easy and straightforward to download a file specified by a **URL**:

```bash
wget http://localhost/myfile.tar.gz
```

A limitation of `wget` is that when a page uses **HTTP** protocols and not **FTP**, it does not support wildcard.

`wget` is most often used to mirror a website:

```bash
wget --mirror -p --html-extension \
--convert-links http://localhost
```

After the transfer has finished, `wget` goes through the local files to change any remote references so the site can be viewed **offline**.


---

## Revision

An alternative to `cURL` is ??? .

- Wget
- which
- dl
