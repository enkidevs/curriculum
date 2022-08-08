---
author: rosielowther
type: normal
category: how-to
links:
  - >-
    [Signing Your Work Official
    Documentation](http://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work){website}
  - '[Git Horror Story](https://mikegerwitz.com/papers/git-horror-story){website}'
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

# Sign your work (using GPG)


---

## Content

First generate a key using GPG:

```bash
gpg --gen-key
```

Then configure git to use your key:

```bash
git config --global user.signingkey 0A45226A
```

To sign a tag use `-s`:

```bash
git tag -s v1.0 -m 'Version 1.0'
```

To sign a commit or merge use `-S`:

```bash
git commit -a -S -m 'Add key'
```

> 💡 This is most useful if everyone in the team follows this practice.

Signing your commits it's a way to enhance git's security. This way you confirm it's you who made the commit. Also, when working with files from the internet, signed commits ensure that their source is trusted.


---

## Practice

Configure your key to be `0A45226A` then sign a commit with it :

```bash
git config --global ??? 0A45226A

git add .

git commit ??? ??? "commit signed"
```

- `user.signingkey`
- `-S`
- `-m`
- `-s`



---

## Revision

```bash
gpg --gen-key
```

Generates a ??? used to sign ??? .

- key
- commits
- password
