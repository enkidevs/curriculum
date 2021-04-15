---
author: tuwidc
type: normal
category: caveats
tags:
  - linux
  - locale
  - dpkg
  - locales
  - terminal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Fixing `locale` issues in Debian systems


---

## Content

In the occurrence of `locale` issues such as:

```plain-text
locale: Cannot set LC_CTYPE  ...
locale: Cannot set LC_MESSAGES ..
locale: Cannot set LC_ALL ..

```

It is possible to first run `locale` to list which `locale`s are currently defined for the user:

```bash
locale
LANG=C
LANGUAGE=
...
LC_IDENTIFICATION="C"
LC_ALL=
```

Then, generate the missing `locale` and reconfigure `locale`s accordingly:

```bash
sudo locale-gen "en_US.UTF-8"
Generating locales...
  en_US.UTF-8... done
Generation complete.
```

```bash
sudo dpkg-reconfigure locales
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
```


---

## Practice

To generate missing `locale` values and reconfigure the existing ones you can run:

```bash
??? 'en_US.UTF-8'
??? ???
```

- `locale-gen`
- `dpkg-reconfigure`
- `locales`
- `locale`
- `gen`
- `reconfigure`


---

## Revision

To generate missing `locales` values, you could run:

```bash
??? 'pt-BR.UTF-8' 
# Portuguese-Brazil
```

- `locale-gen`
- `gen`
- `locales`
