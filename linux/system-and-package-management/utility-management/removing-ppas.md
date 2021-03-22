---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - debian
  - ubuntu
  - software
  - ppa
  - apt-get
  - ppa-purge
  - install
  - repository
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Removing PPAs


---

## Content

*Personal Package Archives* are non-standard updates or pieces of software (think of unstable versions). If you decide to delete them, there are multiple ways in which to do so.

Using the `--remove` flag:

```bash
add-apt-repository --remove ppa:name/ppa
```

Or, as a safer alternative, you can install `ppa-purge`:

```bash
apt-get install ppa-purge
```

And then remove the PPA while gracefully downgrading packages it provided to packages provided by official repositories:

```bash
ppa-purge ppa_name
```

This will remove the PPA but it will not uninstall packages that were installed through it. If you want to remove them, you should use 
`apt`:

```bash
apt-get purge package_name
```

You can also remove PPAs by deleting the .list files from `/etc/apt/sources.list.d` directory and then updating the repositories 
by: 

```bash
apt-get update
```


---

## Practice

The safer alternative to `apt-get purge` that also removes PPA’s is 

???.

- ppa-purge
- add-apt-repository --remove
- manually deleting their list files


---

## Revision

To delete a package installed from a *PPA*, you could run:

```bash
??? ??? ???
```

- `apt-get`
- `purge`
- `package_name`
- `PPA_name`
- `delete`
- `ppa-purge`
