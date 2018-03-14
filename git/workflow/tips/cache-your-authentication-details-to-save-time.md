---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[git-scm.com](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}'
  - '[git-scm.com](https://git-scm.com/book/tr/v2/Git-Tools-Credential-Storage#_credential_caching){website}'


---

# Cache your authentication details to save time

---
## Content

Before you can push to a git server over  HTTP protocol, git will ask for your username and password.

If you don't want to type these in every time, you can store your authentication details in a cache.

To set up a credential cache:
```
$ git config --global 
   credential.helper cache
```

This will keep your details in memory for 15 minutes.

Windows and Mac OS both have systems to store credentials permanently in an encrypted format.

Another option to avoid frequent authentication is to use SSH transport.

---
## Practice

Cache your credentials:
```
$ git ??? ???
  ???.??? ???
```

* `config`
* `--global`
* `credential`
* `helper`
* `cache`

---
## Revision

To cache your credentials for 15 minutes you would run:
```
$ git ??? ??? 
  credential.??? ???
```

* `config`
* `--global`
* `helper`
* `cache`

