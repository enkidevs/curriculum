---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Password Validation


---

## Content

You have probably seen these types of messages on all your favorite sites: *“Your password must have at least 8 characters, including an upper case letter, a lowercase letter and a number”*.

And sometimes even a symbol character to make sure you'll never remember your password in the future... 🤔

Let's build a password validator to match each of these rules using one line of regex!

To crack the **length** part, we need to use a quantifier that allows a number of characters greater or equal to 8. How about:

```plain-text
/.{8,}/
```

This pattern solves the password length problem, but it also matches on the following...

`password` ✅
`12345678` ✅
`PASSWORD` ✅
`!@£$%^&)` ✅

None of these meet the criteria we need!

Even if were more explicit in our regex pattern, using wildcards and ranges, we have the exact same problem as above...

```plain-text
/([A-Z]|[a-z]|\d|\W){8,}/
```

We'll need to use a special regex operator called a *positive lookahead* to check that there is *at least one of each specified character* in the password.

Let's get cracking!


---

## Practice

Which regex pattern would ensure that a password is between 8 and 16 characters in length?

???

- `/.{8,16}/`
- `/.{8,}/`
- `/.{8-16}/`
- `/.[8-16]/`


---

## Revision

Which regex pattern would ensure that a password is between 8 and 14 characters in length?

???

- `/.{8,14}/`
- `/.{8,}/`
- `/.{8-14}/`
- `/.[8-14]/`
