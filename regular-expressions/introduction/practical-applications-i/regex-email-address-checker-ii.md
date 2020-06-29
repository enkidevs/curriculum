---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - '[Email Address Regex](http://emailregex.com/){website}'
  - >-
    [Stackoverflow Email Address
    Checker](https://stackoverflow.com/questions/201323/how-to-validate-an-email-address-using-a-regular-expression/201378#201378){website}
---

# Email Address Checker II


---

## Content

There are so many different ways that we could write our email address checker. 

Here's another way that allows an optional domain name extension, like `co.uk`, but which also works for `.com`:

```plain-text
/^[a-zA-Z0-9.!#$%&’*+/=?^_{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
```

It looks like a lot, but don't be put off! 😅

Let's take a look at each major chunk.

`/[a-zA-Z0-9.!#$%&’*+/=?^_{|}~-]+/` gives all of the allowed email address characters, and ensures that there's at least one of them.

`/[a-zA-Z0-9-]+/` ensures that the host name is alphanumeric and has at least one character.

`/(?:\.[a-zA-Z0-9-]+)*/` this is the optional part. It ensure that there must be zero or more instances of that group, so `.com` would match, but also `.co.uk`.

Pretty neat stuff! 

Regex is an awesome tool for making basic validations, but the more compliant you want to be then the more obscure the regex becomes.

Take a look [here](http://emailregex.com/) and [here](https://stackoverflow.com/a/201378/5583303) to see some even more accurate email address checkers.


---

## Practice

Which part of the following regex pattern matches each part of the email address?

`tacos@enki.com` ✅

```plain-text
/??? ??? ??? ???/
```

- `(tacos)`
- `@`
- `[a-z]+`
- `(?:\.[a-z]+)*`


---

## Revision

Which part of the following regex pattern matches each part of the email address?

`we_love_tacos@enki.com` ✅

```plain-text
/??? ??? ??? ???/
```

- `[a-z_]+`
- `@`
- `[a-z]+`
- `(?:\.[a-z]+)*`
 
