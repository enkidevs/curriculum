---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Remote Branches Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}
  - >-
    [Credential Caching Official
    Documentation](https://git-scm.com/book/tr/v2/Git-Tools-Credential-Storage#_credential_caching){website}
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

# Cache your authentication details to save time


---

## Content

Before you can push to a git server over HTTP protocol, git will ask for your username and password.

If you don't want to type these in every time, you can store your authentication details in a cache.

To set up a credential cache:

```bash
git config --global credential.helper cache
```

This will keep your details in memory for 15 minutes.

Windows and Mac OS both have systems to store credentials permanently in an encrypted format.

Another option to avoid frequent authentication is to use SSH transport.


---

## Practice

Cache your credentials:

```bash
git ??? ??? ???.??? ???
```

- `config`
- `--global`
- `credential`
- `helper`
- `cache`


---

## Revision

To cache your credentials for 15 minutes you would run:

```bash
git ??? ??? credential.??? ???
```

- `config`
- `--global`
- `helper`
- `cache`
