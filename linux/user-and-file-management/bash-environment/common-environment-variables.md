---
author: jfarmer

aspects:
  - introduction
  - workout

type: normal

category: must-know

tags:
  - introduction
  - linux
  - environment
  - variables

---

# Common Environment Variables

---
## Content

On Linux (and other Unix-based operating systems), common environment variables include:

- `HOME`, which contains the current user's home directory

- `PATH`, which contains a list of directory paths. When a user types a command without providing the full path, `bash` will look at the directories in the `PATH` environment variable to see if they contain the given command.

- `PS1`, which specifies how the prompt is displayed

- `EDITOR`, which specifies the default text editor.

- `LANG`, which specifies the user's language, e.g., a value of `pt_BR` signifies that the user prefers Brazillian Portuguese.

---
## Revision

Print the value of the environmental variable `HOME` : 
```bash
??? ???
```

* `echo`
* `$HOME`
* `home`
* `$home`
* `ls`