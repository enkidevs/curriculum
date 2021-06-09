---
author: nene
type: normal
category: how-to
tags:
  - passwords
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Best password generation utilities


---

## Content

`apg`  displays six somewhat memorable passwords based on your keyboard input. Entirely random ones can be produced with `apg -a 1`, which contain 8-10 totally randomised characters.

`pwgen` floods your terminal with a set of passwords so you can pick one.

Some additional flags :

`pwgen -1`: gives you a single password rather than an entire screen full of them;

`pwgen -s`: uses a different algorithm to make it more secure;

`pwgen -y`: adds special characters to the given password.

You can also use `makepasswd` : 

```bash
makepasswd -count X -minchars Y
```

Just replace `X` with the number of passwords required and `Y` with the minimum length of each in the code above.

Another use could be : 

```bash
makepasswd -string 1234567890 -chars 4
```

That would create numerical-only, four digit long passwords (think PIN codes).


---

## Revision

Out of the following, the tool that is *not* helpful if you want to generate passwords is ???

- `xargs`
- `apg`
- `pwgen`
- `makepasswd`
