---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - service
  - systemd
  - restart
  - reload
  - status
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Basic service management with `systemd`


---

## Content

In Ubuntu `upstart` will be deprecated in favor of `systemd`. Here is what you can do with it.

For each service unit, this command displays its full name followed by a note whether the unit has been loaded, its high-level and low-level unit activation state, and a short description[1]:

```bash
systemctl list-units --type service
                               --all

```

Use the following to start a service. Does not persist after reboot:

```bash
systemctl start SERVICE.service
```

Use this to stop a service. Does not persist after reboot:

```bash
systemctl stop SERVICE.service
```

Use the following to restart a service:

```bash
systemctl restart SERVICE.service
```

If the service supports it, this will reload the config files related to it without interrupting any process that is using the service:

```bash
systemctl reload SERVICE.service
```

The next command shows the status of a service and whether or not a service is currently running:

```bash
systemctl status SERVICE.service
```

To start a service on boot, use:

```bash
systemctl enable SERVICE.service
```

And to stop it from starting on boot:

```bash
systemctl disable SERVICE.service
```


---

## Revision

Service-specific actions (enable, stop, restart, reload) can be triggered by 

??? .

- systemctl
- res
- nano
- syserv


---

## Footnotes

[1:Example output]

```plain-text
UNIT
```
