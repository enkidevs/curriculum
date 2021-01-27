---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - permissions
  - file
  - terminal
  - ssh
  - stat
  - introduction
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Get file permissions in octal form


---

## Content

Use the `stat` command to get a file's permissions in octal form:

```bash
stat -c "%a %n" file
```

From the man page of `stat`:

```plain-text
-c  --format=FORMAT
%a     Access rights in octal
%n     File name
```

Examples for files:

```bash
stat -c "%a %n" .ssh/id_rsa 
600 .ssh/id_rsa
```

Folders:

```bash
stat -c "%a %n" /var/www
755 /var/www/
```


---

## Revision

You can use `stat` to get file permissions in octal form as:

```bash
stat ??? ??? ???
```

- `-c`
- `”%a %n”`
- `filename`
- `”%c %n”`
- `-oc`
