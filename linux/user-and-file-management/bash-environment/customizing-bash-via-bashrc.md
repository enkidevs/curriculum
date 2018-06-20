---
author: jfarmer

levels:

  - basic

  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction


links:

  - '[.bashrc vs. .bash_profile](http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html){website}'

parent: what-is-a-shell

aspects:
  - introduction


---

# Customizing `bash` via `.bashrc`

---
## Content

It's possible for each user to customize their `bash` environment.  This is done by editing the `.bashrc` file in a given user's home directory.

One of the first things `bash` does when loaded is look for the `.bashrc` file in the current user's home directory.  If the file exists, each line in this file is executed "as if" the user typed the line directly at the prompt.

### Common Customizations

Common customizations include:

- Changing the default prompt by adding color or additional information
- Using `alias` to create short-hand expressions for common commands, e.g., making `ll` an alias of `ls -l`.
- Changing system defaults, usually by modifying environment variables such as `PATH` and `EDITOR`.


You'll learn more about these terms and how to make some of these customizations yourself in future workouts.

### `.bashrc` vs. `.bash_profile`

When researching how to customize your shell, you'll often see reference to both `.bashrc` and `.bash_profile`.  Most systems are set up so that the difference between these two files doesn't matter and you can edit one or the other to the same effect.  The actual difference is somewhat technical, reflecting distinctions that made more sense on the big mainframe computers of the 70s and 80s.

If you bookmark this insight, you'll get an email with a link to a "bashrc vs bash_profile" article explaining the difference.

---
## Revision

Two common files that are used for bash customization are `.bash_profile` and ???.

* .bashrc
* .bash
* .bashst
* .bash_settings

 
