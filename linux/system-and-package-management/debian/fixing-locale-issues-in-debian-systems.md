---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - linux

  - locale

  - dpkg

  - locales

  - terminal




---

# Fixing `locale` issues in Debian systems

---
## Content

In the occurrence of `locale` issues such as:
```
locale: Cannot set LC_CTYPE  ...
locale: Cannot set LC_MESSAGES ..
locale: Cannot set LC_ALL ..

```

It is possible to first run `locale` to list which `locale`s are currently defined for the user:

```
$ locale
LANG=C
LANGUAGE=
...
LC_IDENTIFICATION="C"
LC_ALL=
```

Then, generate the missing `locale` and reconfigure `locale`s accordingly:
```
$ sudo locale-gen "en_US.UTF-8"
Generating locales...
  en_US.UTF-8... done
Generation complete.
```
```
$ sudo dpkg-reconfigure locales
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
```

---
## Practice

To generate missing `locale` values and reconfigure the existing ones you can run:
```
$ ??? 'en_US.UTF-8'
$ ??? ???
```

* `locale-gen`
* `dpkg-reconfigure`
* `locales`
* `locale`
* `gen`
* `reconfigure`

---
## Revision

To generate missing `locales`  values, you could run:
```
$ ??? 'pt-BR.UTF-8' 
# Portuguese-Brazil
```

* `locale-gen`
* `gen`
* `locales`

 
