---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Tagging Official
    Documentation](http://git-scm.com/book/en/v2/Git-Basics-Tagging){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Pushing tags to a server


---

## Content

The `git push` command doesn’t automatically transfer your tags to the remote server. 

You have to push a tag that you want to share by running `git push remote [tagname]`. 

For example:

```bash
git push origin v1.1.0
```

You can use the `--tags` option to push all of your tags to the remote server that are not already there.

```bash
git push origin --tags
```


---

## Practice

Transfer all your tags to the remote  `origin` server :

```bash
git ??? ??? ???
```

- `push`
- `origin`
- `--tags`
- `master`
- `v1.0`
- `-m`


---

## Revision

What does this command do?

```bash
git push enki v1.2
 
```

???

- Pushes tag v1.2 to the remote enki
- Pushes tag enki to the remote v1.2
- Pushes tag enki v1.2 to origin
