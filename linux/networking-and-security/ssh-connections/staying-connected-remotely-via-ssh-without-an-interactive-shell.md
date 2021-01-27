---
author: dean
type: normal
category: hack
tags:
  - ssh-tunnel-interactive-shell
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Staying connected remotely via SSH without an interactive shell


---

## Content

You may need to connect to a remote location via SSH, but if the remote location doesn't provide an interactive shell, the connection is most likely to drop.

For example, you may need to port forward from the *remote connection's port 9001* to *localhost's port 6000*, but the remote server does not offer an interactive shell.

To prevent a disconnection, use the `-N` flag:

```shell
ssh -N -L 9001:localhost:6000
          user@remotehost
```

The `-N` option prevents remote commands from executing, and therefore allows local port forwarding.


---

## Revision

If you are looking for a port forwarding on a machine without an interactive shell, you should use `ssh` ??? flag.

- -N
- -n
- -C
- -p
