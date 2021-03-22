---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Personalizing Your Environment


---

## Content

It's possible for each user to customize their `bash` environment by editing the `.bashrc` file in their home directory.

If the file exists, one of the first things `bash` does when loaded is it executes each line in this file "as if" the user typed the line directly in the terminal.

### Common Customizations

Common customizations include:

- Changing the default terminal by adding color or additional information
- Using `alias` to create short-hand expressions for common commands
- Changing system defaults, usually by modifying environment variables such as `PATH` and `EDITOR`.

> 💡 When researching how to customize your shell, you'll often see reference to both `.bashrc` and `.bash_profile`.  Most systems are set up so that the difference between these two files doesn't matter and you can edit one or the other to the same effect[1].


---

## Practice

Which of these files should you edit to customize your environment?

???

- .bashrc
- bashrc
- .bash
- bash


---

## Revision

Two common files that are used for bash customization are `.bash_profile` and ???.

- .bashrc
- .bash
- .bashst
- .bash_settings


---

## Footnotes

[1:Trivia]
The actual difference is somewhat technical, reflecting distinctions that made more sense on the big mainframe [computers](https://en.wikipedia.org/wiki/Computer_terminal) of the 70s and 80s.
