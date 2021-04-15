---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Tagging Official
    Documentation](http://git-scm.com/book/en/v2/Git-Basics-Tagging){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Using Tags for Version Control


---

## Content

In git you can tag a certain point in history as being important. You can use this to mark a new **version**.

You can create an **annotated** tag by:

```bash
git tag -a v1.0.1 -m "Version 1.0.1"
```

Annotated tags contain useful information: the current commit checksum, your name and email, the date and the tagging message.

You can also create a **lightweight** tag which acts just as a pointer to the current commit:

```bash
git tag v1.0.1
```

You can add a tag to an **older** commit by specifying part of its commit checksum, for example:

```bash
git tag -a v.1.0.0 4682c32
```

You can list all the tags you have made in **alphabetical** order:

```bash
git tag
v0.1
v0.9
v1.5
```

If your project has hundreds of tags, you can also search for **specific** tags, for example those of version `v1.0`:

```bash
git tag -l "v1.0*"
v1.0.0
v1.0.1
v1.0.2
v1.0.3
```


---

## Practice

Add a `v1.0` annotated tag to the commit `ac32b10`.

```bash
git ??? ??? ??? ac32b10
```

- `tag`
- `-a`
- `v1.0`
- `-t`
- `-m`
- `commit`


---

## Revision

Complete the command to retrieve all tags that are part of `v2`:

```bash
git tag ??? ???
```

- `-l`
- `v2*`
- `2`
- `-m`
