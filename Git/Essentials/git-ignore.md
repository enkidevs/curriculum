# Git Ignore
author: catalin

levels:

  - beginner

type: normal

category: must-know

---
## Content

You don't normally want every file in a project to be  under version control. Files that control local configuration or compiled code files, for example, should be excluded and **Git** provides the `.gitignore` file.


If **Git** finds a `.gitignore` file[1] in the root of your project, it will use it to automatically ignore all files specified by *ignore rule*.

You can ignore single files:
```
# inside .gitignore
/path/to/ignored/file.txt
```

Wildcards are also honored:
```
# inside .gitignore
*.java
# this will make git ignore all files
#  with .java extension
```

Full directories and subdirectories can be targeted:
```
# inside .gitignore
/dir/to/ignore/*
```

Keep in mind that if files specified in `.gitignore` were checked in before the rule was introduced, you need to manually **untrack** them:
```
$ git rm --cached myFile.java
```

---
## Practice

Can wildcards be used inside the `.gitignore` file?

???

*Yes
*No
*Only in newer versions of Git

---
## Revision

What file is used to tell git to ignore certain files in your project?

???

*`.gitignore`
*`.git`
*`.ignore`

---
## Footnotes

[1] Note this is a "dot-file" whose filename begins with a dot.  A 'hidden' file by convention