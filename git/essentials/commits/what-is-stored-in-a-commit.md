---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Git Commit History Official
    Documentation](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){website}
  - >-
    [What Is a
    Checksum](https://www.howtogeek.com/363735/what-is-a-checksum-and-why-should-you-care/){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Is Stored in a Commit?


---

## Content

When you make a commit, `git` stores a commit object.

You can view the information stored in the commit objects for that repository by using `git log`. For example:

```bash
git log
commit bc01a6
Author: C Mustard <cmustard@enki.com>
Date:   Mon Jan 25 09:41:11 2016 +0000
    changed content of README
```

The commit object contains a checksum[1], the author's name and email, the commit message, and a pointer to the commit that came before it (or multiple commits).


---

## Revision

The usual commit object contains a checksum, author’s name and email, date and a ??? .

- commit message
- hash code 

---

## Footnotes

[1: Checksum]

Checksums are used to check files and other data to confirm they are identical.

A checksum is produced by running the file through an algorithm (e.g. MD5, SHA-1, SHA-256, SHA-512) and it produces a string of fixed length. The size or type of the file doesn't matter and the length of the string will always be the same.

Here is an example of us generating a checksum for the Enki logo:

```bash
# generating a checksum on Ubuntu
sha256sum Enki\ Logo.png

30d9adf29a1a20d269febe8cb378de302bf5019cbd97b14e255d62f129c17965
  Enki Logo.png
```

If the files are not identical, the checksum will be entirely different.

For more information about checksums, check the *Learn More* section.
