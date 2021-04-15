---
author: catalin
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Git Ignore


---

## Content

You don't normally want every file in a project to be under version control. Files that control local configuration or compiled code files, for example, should be excluded and **Git** provides the `.gitignore` file.

If **Git** finds a `.gitignore` file[1] in the root of your project, it will use it to automatically ignore all files specified by the *ignore rule*.

You can ignore single files:

```plain-text
# inside .gitignore
/path/to/ignored/file.txt
```

Wildcards are also available:

```plain-text
# inside .gitignore
*.java
# this will make git ignore all files
# with .java extension
```

Full directories and subdirectories can be targeted:

```plain-text
# inside .gitignore
/dir/to/ignore/*
```

Keep in mind that if files specified in `.gitignore` were checked in before the rule was introduced, you need to manually **untrack** them:

```bash
git rm --cached myFile.java
```

Most of the time, you should be able to find online a `.gitignore` template for the language and IDE combination you're using.


---

## Practice

Can wildcards be used inside the `.gitignore` file?

???

- Yes
- No
- Only in newer versions of Git


---

## Revision

What file is used to tell git to ignore certain files in your project?

```plain-text
???
```

- `.gitignore`
- `.git`
- `.ignore`


---

## Footnotes

[1: Dot files]
By convention, a "dot-file" (a file name which begins with `.`) is hidden and extra steps are required for it to be displayed in the file explorer.
