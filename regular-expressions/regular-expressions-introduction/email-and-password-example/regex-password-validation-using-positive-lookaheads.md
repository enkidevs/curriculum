---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Special
    Operators](https://www.regular-expressions.info/refadv.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Passwords using Positive Lookaheads


---

## Content

Password validation works best when we use a regex operator called a **positive lookahead**.

This will search for the pattern inside the text to make sure it appears *at least once*, but the important thing is that the *order of where it appears doesn't matter*.

Positive lookaheads start with `/(?=)/`. For example:

`/(?=.*[a-z])/` means that there must be at least one *lower case letter*.

`/(?=.*[A-Z])/` means that there must be at least one *upper case letter*.

`/(?=.*\d)/` means that there must be at least one *digit*.

`/(?=.*\W)/` means that there must be at least one *symbol*.

If we add these positive lookaheads into our password validator, our regex pattern will look like this:

```plain-text
/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W).{8,}/
```

`Password123!` ✅
password123! ❌

There are two more things we can add to make it fully watertight.

`^` and `$` make sure the match starts at the beginning of a word and ends with the word. Essentially, only whole word matches are allowed. Partial matches aren’t considered.

Our password validator in one line of regex 🎉:

```plain-text
/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W).{8,}$/
```


---

## Practice

What's the correct syntax for a positive lookahead to check that a password must have at least one word character, regardless of capitalization?

???

- `/(?=.*\w)/`
- `/(?=.*\W)/`
- `/(?=.*[a-zA-Z])/`
- `/(?=.*\S)/`


---

## Revision

What's the correct syntax for a positive lookahead to check that a password must have at least one upper case letter?

???

- `/(?=.*[A-Z])/`
- `/(?=.*\W)/`
- `/(?=.*[A-Z]{1})/`
- `/(?=.*\S)/`
