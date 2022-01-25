---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Git
    Basics](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Make your log output pretty


---

## Content

The `--pretty` option makes the log output easier to read. 

You can use `format` to specify your own log layout using some useful options (such as `%h` for an abbreviated commit hash). 

For example:

```bash
git log --pretty=format:"%h - %an: %s"
ab92a5c - C Mustard: Edit app name
bb65c8d - C Mustard: Add README
c03a5c7 - C Mustard: First commit

```

You can use the option `oneline` to print each commit on a single line.

You can use `short`, `full` and `fuller` to determine how much information is shown.

```bash
git log --pretty=oneline
```


---

## Practice

Print the output where `%ar` represents the time since the commit has been pushed:

```bash
git ??? ???: "??? - %ar"
fe21ab0 - 1 week ago 
cd4512a - 2 weeks ago 
```

- `log`
- `--pretty=format`
- `%h`
- `--pretty`
- `oneline`


---

## Revision

Print the log output on a single line:

```bash
git ??? ???
```

- `log`
- `--pretty=oneline`
- `--pretty`
- `oneline`
- `singleline`
