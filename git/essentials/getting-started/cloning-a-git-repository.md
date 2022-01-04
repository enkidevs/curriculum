---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Git Clone Official
    Documentation](https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-clone){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Cloning a Git repository


---

## Content

The second way through which you can get your hands on a **Git** repository is by *cloning* it.

The term **cloning** entails how the whole **Git** flow works. Instead of providing a working copy, the `git clone` command makes a full copy of the *repository*, including all project history.

In case of server failure, corruption or other unfortunate events, any clone can be used to restore the state of the project.

The syntax used to clone a repository is:

```bash
git clone [URL]
```

You can clone any open-source project or even private ones as long as you have the right credentials.

For example, you can clone the `reduck` library from its specific URL:

```bash
git clone https://github.com/enkidevs/reduck
```

Running this command will:

- create a directory named "reduck"
- initialize a `.git` directory inside
- pull all repository data in the `.git` directory
- checkout a working copy of the latest version of the project

Another name for the parent directory can be specified as follows:

```bash
git clone https://github.com/enki/repo myAwesomeClone
```

Apart from the `https` protocol used above, `git` also supports transfer through **SSH** and local protocols.


---

## Practice

What's the last step **Git** automatically does after running `git clone`?

???

- checks out a working copy of the latest version of the project
- initializes the .git directory
- pulls repository data in the .git directory
- create a new folder directory


---

## Revision

Does running `git clone` with a repository's URL require having an existing working copy on your machine?

???

- No
- Yes
- Only if you don't provide a new directory name
