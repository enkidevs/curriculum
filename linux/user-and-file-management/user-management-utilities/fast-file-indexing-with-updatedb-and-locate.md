---
author: tuwidc
type: normal
category: best-practice
tags:
  - updatedb
  - mlocate
  - locate
  - find files
  - indexing filesystem
  - workout
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Fast file indexing with `updatedb` and `locate`


---

## Content

The `updatedb` command is used to index the files in your file system and `locate` is used to search for files efficiently, using this index.

Create the index with sudo:

```bash
sudo updatedb
```

Locate the file `squid.conf` using the index:

```bash
locate squid.conf 
```

To keep this database updated it is advisable to add a directive on the root's crontab.

First, issue:

```bash
crontab -e
```

and add this at the end:

```bash
0 5 * * * updatedb
```

The `updatedb` and `locate` commands are provided by the `mlocate` package. You can set up `mlocate` by using `apt-get` or `yum`.

In Debian based systems:

```bash
sudo apt-get install mlocate
```

or Red-Hat based systems:

```bash
yum install mlocate
```


---

## Revision

??? pair, provided by the `mlocate` package, is used to search for files efficiently .

- updatedb/locate
- searchdb/locate
- search/locate
- indexdb/findb
