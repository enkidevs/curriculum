---
author: Bruno
type: normal
category: tip
---

# Subdirectory checkout


---

## Content

As of version 1.7, `git` can checkout selected subdirectories, just like `svn`. 

Set up:

```plain-text
mkdir <repo> && cd <repo>
git init
git remote add –f <name> <url>
```

Enable sparse-checkout:

```plain-text
git config core.sparsecheckout true
```

Choose your subdirectories:

```plain-text
echo some/dir/ \
   >> .git/info/sparse-checkout
echo another/sub/tree \
   >> .git/info/sparse-checkout
```

Checkout:

```plain-text
git pull <remote> <branch>
```

Sparse checkout allows the user to choose what files to look at. It does the opposite of `.gitignore`: every file not specified in `.git/info/sparse-checkout` is ignored.


---

## Practice

Enable *sparse checkout* then choose to checkout only the `newFeature/` subdirectory:

```bash
git ???
      ???.??? true
echo ??? >>
       .git/info/sparse-checkout
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
