---
author: catalin
type: normal
category: how-to
links:
  - >-
    [First Time Git Setup Official
    Documentation](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup){website}
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

# Basic Git configuration


---

## Content

After installing, you might want to customize different variables or information in your **Git** environment.

For example, you can change your *username* and *email* address so that work you get done with **Git** shows your identity.

To help you, **Git** provides the `git config` tool, making it easier to change configuration variables that affect how Git works or looks.

To list all current settings:

```bash
git config --list
user.name=John Doe
user.email=johndoe@example.com
color.status=auto
color.branch=auto
...
```

To see a specific setting:

```bash
git config user.name
John Doe

```

To change your identity[1]:

```bash
git config --global user.name "Enki"
git config --global user.email i@enki.me

```

**Git** will sometimes ask for user input by invoking the system's default text editor. To change what editor is used by **Git**:

```bash
git config --global core.editor vim
```

On *Windows* machines, the path to the executable must be included.


---

## Practice

Complete the command to change your username for all projects:

```bash
git ??? ??? user.??? "My Name"
```

- `config`
- `--global`
- `name`
- `user`
- `username`
- `me`
- `--all`
- `--general`
- `set`


---

## Revision

What `Git` command is used to change various configuration options?

```bash
???
```

- `git config`
- `git --global`
- `git settings`
- `git custom`
- `git set`


---

## Footnotes

[1:global]
The `--global` flag applies changes to all projects. It's possible to change variables for specific projects by running the command without the flag.
