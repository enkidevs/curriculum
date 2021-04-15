---
author: tuwidc
type: normal
category: must-know
tags:
  - ssh
  - client
  - linux
  - terminal
  - config
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Aliasing ssh connections


---

## Content

When using many ssh connections it is very convenient to alias them.

Instead of:

```bash
ssh -i ~/.ssh/custom_id_rsa \
root@213.133.109.135 -p 31415
```

Start by editing this file:

```bash
nano .ssh/config
```

Add the following:

```plain-text
Host lisa
IdentityFile ~/.ssh/custom_id_rsa
HostName 213.133.109.135
User root
Port 31415
```

After that, you can ssh by alias:

```bash
ssh lisa
```


---

## Practice

Alias the following connection:

```bash
ssh -i ~/.ssh/id_rsa
     root@123.12.255.19 -p 256
```

In the `.ssh/config` file:

```plain-text
Host myServer
??? ~/.ssh/id_rsa
HostName ???
User root
??? 256
```

- `IdentityFile`
- `123.12.255.19`
- `Port`
- `ID`
- `Name`


---

## Revision

You can alias *ssh connections* by editing the ??? file .

- `.ssh/config`
- `.ssh/connections`
- `.ssh/servers`
- `.ssh/alias`
