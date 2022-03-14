---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Changing Group Membership With `usermod`


---

## Content

We can use the `usermod` command to add a user to a specific group.  It works like so:

```shell
sudo usermod -a -G new-group jesse
```

This would add the user `jesse` to the group `new-group`.  The `-a` option means "append", without which `usermod` would overwrite the existing group memberships (in this case, making `jesse` a member of `new-group` and no other group).  The `-G` option specifies the group(s) to add the user to.

*Removing* a user from a group is trickier.  If it's available, the `gpasswd` command can be used, like so to remove `jesse` from `new-group`:

```shell
sudo gpasswd -d jesse new-group
```


---

## Practice

Add `john` to the `enki` group:

```plain-text
sudo ??? ??? ??? ??? ???
```

- `usermod`
- `-a`
- `-G`
- `enki`
- `john`
- `-Ag`
- `-A`


---

## Revision

Make `john` a member of the `enki` group, and of this group only:

```plain-text
sudo ??? ??? ??? ???
```

- `usermod`
- `-G`
- `enki`
- `john`
- `-aG`
- `chmod`
