---
author: rosielowther
type: normal
category: must-know
---

# Locate a commit by its hash


---

## Content

To identify a commit, git only requires the user to specify the first four characters of the hash (checksum), although it is generally better to use at least seven characters.

For example, these will have the same results:

```plain-text
git show d921970aadf03b3cf0e71
becdaab3147ba71cdef
git show d921970
```

To get the unique abbreviation of the SHA-1 hash (7+ characters):

```plain-text
git log --abbrev-commit --pretty=oneline
d921970 Edit README
cb45e34 Change version name 
```


---

## Practice

Run the command to find out the unique abbreviation of a checksum :

```bash
git ??? ???
      ???=???
```

- `log`
- `--abbrev-commit`
- `--pretty`
- `oneline`
- `show`


---

## Revision

```plain-text
git show 
d921970aadf03b3cf0e71becdaab3147ba71cdef
```

??? have the same result as:

```plain-text
git show d921970
```

- will
- will not
