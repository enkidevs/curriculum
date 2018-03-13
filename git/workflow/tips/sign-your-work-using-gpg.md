---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[git-scm.com](http://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work){website}'
  - '[mikegerwitz.com](https://mikegerwitz.com/papers/git-horror-story){website}'


---

# Sign your work (using GPG)

---
## Content

First generate a key using GPG:
```
$ gpg --gen-key
```
Then configure git to use your key:
```
$ git config --global 
  user.signingkey 0A45226A
```
To sign a tag use `-s`:
```
$ git tag -s v1.0 -m 'Version 1.0'
```
To sign a commit or merge use `-S`:
```
$ git commit -a -S -m 'Add key'
```
Note: this is most useful if everyone in the team follows this practice.

Signing your commits it's a way to enhance git's security. This way you confirm it's you who made the commit. Also, when working with files from the internet, signed commits ensure that their source is trusted.

---
## Practice

Configure your key to be `0A45226A` then sign a commit with it :
```
$ git config --global ??? 
                     0A45226A

$ git add .

$ git commit ??? ???
               “commit signed”
```

* `user.signingkey`
* `-S`
* `-m`
* `-s`

---
## Revision

```
$ gpg --gen-key
```
Generates a ??? used to sign ??? .

* key
* commits
* password

