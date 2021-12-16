---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Working With Remotes Official
    Documentation](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Introduction to remote repositories


---

## Content

**Remote repositories** in Git represent a copy of the repository that exists elsewhere (remotely).

You can have multiple remote repositories, with different permissions on each one. Some can be **read-only** while on some you can perform both **read** and **write** operations.

These remote repositories are useful and, most of the time, represent a requirement when collaborating as part of a team.

Even though about `90%` of version control related work happens on local repositories, the remote ones are needed to share the data between different team members.

It is important for a team member to know how to manage (*add*, *remove*, etc.) and work with data (*push* and *pull* changes) from remote repositories to be able to collaborate effectively.

Remote repositories can be a GitHub repository, a user's fork on a server or just another computer on your local network.

**Pushing** and **Pulling** to/from remote repositories can be accomplished with HTTP and SSH protocols.

When pulling from **GitHub**[1] for example, you can do this via the `git clone` command:

- With `HTTP` over `SSL`(HTTPS), this would mean:

```bash
git clone https://github.com/user/repo.git
```

- And with `SSH` you would do:

```bash
git clone git@github.com:user/repo.git
```


---

## Revision

You can have ??? remote repositories/repository.

- multiple
- only one
- up to one hundred


---

## Footnotes

[1:GitHub]
**GitHub** is the most-known and used web-based Git repository hosting service.
