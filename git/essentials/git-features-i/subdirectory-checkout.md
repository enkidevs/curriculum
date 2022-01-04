---
author: Bruno
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Subdirectory Checkout


---

## Content

As of version 1.7, `git` can checkout selected subdirectories, just like `svn`. 

Set up:

```bash
mkdir <repo> && cd <repo>
git init
git remote add –f <name> <url>
```

> 💡 Using the `-f` flag means that the command `git fetch <name>` is run immediately after the remote information is set up. 

Enable sparse-checkout:

```bash
git config core.sparsecheckout true
```

Choose your subdirectories:

```bash
echo some/dir/ >> .git/info/sparse-checkout
echo another/sub/tree >> .git/info/sparse-checkout
```

Checkout:

```bash
git pull <remote> <branch>
```

Sparse checkout allows the user to choose what files to look at. It does the opposite of `.gitignore`: every file not specified in `.git/info/sparse-checkout` is ignored.


---

## Practice

Enable *sparse checkout* then choose to checkout only the `newFeature/` subdirectory:

```bash
git ??? ???.??? true
echo ??? >> .git/info/sparse-checkout
```

- `config`
- `core`
- `sparsecheckout`
- `newFeature/`
- `.git/newFeature`


---

## Revision

Directories not specified in the `sparse-checkout` file are

???

- ignored
- the only ones pulled
- immutable
