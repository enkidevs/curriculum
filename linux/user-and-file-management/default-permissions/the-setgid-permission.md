---
author: catalin
type: normal
category: must-know
tags:
  - deep
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# The `setgid` permission

---

## Content

The `setgid` permission stands for **set group id**. This permission is similar to `setuid`, except that the process's effective group ID is changed to the _group owner_ of the file, and access of a _user_ is granted based on permissions assigned to that group. Therefore, the file belongs to the group that owns the directory, not to the user's group ownership.

When `setgid` permission is applied to a directory, files that were created in this directory belong to the group to which the directory belongs, not the group to which the creating process belongs.

To set the `setgid` bit on a file:

```bash
chmod g+s enkiscript

```

Remove the `setgid` bit:

```bash
chmod g-s enkiscript
```

To remove both `setuid` and `setgid` with octal alternative:

```bash
chmod 0777 enkiscript
```

Find all files with `setgid`:

```bash
find / -type f -perm /2000 -exec stat
    -c "%A %a %n" {} \;
```

---

## Practice

Say `team` directory belongs to group `enki` and has `setgid` permission enabled.

If a user of group `test` creates a new file in that directory, which group will own the file?

???

- enki
- test
- both groups

---

## Revision

How do you apply `setgid` bit to a file?

```bash
??? ??? myfile
```

- `chmod`
- `g+s`
- `g-s`
- `u+s`
- `a-s`
- `perm`
