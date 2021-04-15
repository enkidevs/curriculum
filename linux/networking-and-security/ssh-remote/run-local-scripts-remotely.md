---
author: catalin
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Run local scripts remotely


---

## Content

Let's say you locally have a script that you want to run on a remote machine.

This can be done by securely copying the file on the server first (`scp`) , yet login on the remote machine is necessary.

The `enki.sh` script can be run directly on the remote machine with the following command:

```bash
ssh user@enki 'bash -s' < enki.sh
```

The output of `enki.sh` will be displayed locally.


---

## Revision

Run a local script on a `user@server` machine:

```bash
??? ??? 'bash -s' 
        ??? enki.sh
```

- `ssh`
- `user@server`
- `<`
- `|`
- `cp`
- `user`
