---
author: tuwidc
type: normal
category: must-know
tags:
  - path
  - linux
  - terminal
  - bash
  - bashrc
  - export
  - introduction
---

# Adding Directories to `PATH`


---

## Content

To do this, edit the `.bashrc` file in the home directory and append the following line (chaining the existing `PATH` at the end):

```plain-text
export PATH=/path/to/dir:$PATH
```

You can open `.bashrc` in terminal by running:

```plain-text
nano ~/.bashrc
# ~/ being the implicit path for
# your home folder
```

For example, to add the directory `/usr/sbin`, the following would be used:

```plain-text
PATH="/usr/sbin:$PATH"
```

Source your `.bashrc` or logout/login (or restart the terminal) for the changes to take effect.

Sourcing executes the file that it was given as a parameter. To source your `.bashrc`, simply type:

```plain-text
source ~/.bashrc
```

This is the same as running:

```plain-text
. ~/.bashrc
```


---

## Practice

What should be added to `.bashrc` to prepend `/fun/enki`  to `PATH`?

```bash
# PATH=???
# reload .bashrc
??? ~/.bashrc
```

- `"/fun/enki:$PATH"`
- `source`
- `"/fun/enki:PATH"`
- `/fun/enki:$PATH`
- `reload`


---

## Revision

In order to add a new directory to `PATH`, you have to modify the ??? file.

- .bashrc
- .bashsrc
- .bashpath


---

## Quiz

### when is the ~/.bashrc file run?


When is the `~/.bashrc` file run?

???

- Whenever a new terminal is opened
- Once every boot
- Once for every user login
- Every thirty minutes
