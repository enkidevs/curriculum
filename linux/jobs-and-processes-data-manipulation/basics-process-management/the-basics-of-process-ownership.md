---
author: jfarmer
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Basics of Process Ownership


---

## Content

Every process is "owned" by a specific user.  A process owned by a user has permission to do anything that user would be able to do were they logged in directly.

For example, if a process is owned by `jesse` then that process would have permission to do anything `jesse` could do: edit files in `jesse`'s home directory, start new processes which are also owned by `jesse`, etc.

System processes like `init` and `login` are owned by `root` and when a `root`-owned process forks a new process it has the ability to change the owner of the child process.

Thus, when you log in the `login` command will fork a new process to run your shell, but that new process will be owned by whichever user logged in successfully.  Any subsequent commands launched from the command line will be owned by the user who logged in.

By default only `root` processes can change ownership in this way.


---

## Revision

Other than the owner of the process, who else has access to it? 

???

- Root users
- No one else
- All other users
