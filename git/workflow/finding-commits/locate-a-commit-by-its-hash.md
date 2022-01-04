---
author: rosielowther
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

# Locate a commit by its hash


---

## Content

To identify a commit, git only requires the user to specify the first four characters of the hash (checksum), although it is generally better to use at least seven characters.

For example, these will have the same results:

```bash
git show d921970aadf03b3cf0e71
becdaab3147ba71cdef
git show d921970
```

To get the unique abbreviation of the SHA-1 hash (7+ characters):

```bash
git log --abbrev-commit --pretty=oneline
d921970 Edit README
cb45e34 Change version name 
```


---

## Practice

Run the command to find out the unique abbreviation of a checksum :

```bash
git ??? ??? ???=???
```

- `log`
- `--abbrev-commit`
- `--pretty`
- `oneline`
- `show`


---

## Revision

```bash
git show 
d921970aadf03b3cf0e71becdaab3147ba71cdef
```

??? have the same result as:

```bash
git show d921970
```

- will
- will not
