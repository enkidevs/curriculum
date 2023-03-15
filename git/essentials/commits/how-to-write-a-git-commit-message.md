---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [How To Write A Git Commit
    Message](http://chris.beams.io/posts/git-commit/){website}
  - >-
    [5 Useful Tips For A Better Commit
    Message](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message){website}
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

# How to write a git commit message


---

## Content

You should write a commit message that explains the aim of the commit and why the changes were made.

For simple commits, this is an example of best practice:

```bash
git commit -m "Fix typo in README"
```

For a longer commit, you should leave a line after the subject and include more description in the body of the commit:

```bash
git commit -m
# commit message editor
Redirect user to the login form

Issue 2034

Users were not redirected to the 
login form, so were unable to access 
the site content.
```

You should stick to a convention that is consistent with the rest of the team.


---

## Practice

Commit the changes with the message "issue no.8 fixed":

```bash
git ??? ??? ???
```

- `commit`
- `-m`
- `"issue no.8 fixed"`
- `-message`


---

## Revision

Commit the changes with the message "typo fixed":

```bash
??? ??? ??? ???
```

- `git`
- `commit`
- `-m`
- `"typo fixed"`
