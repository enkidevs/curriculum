---
author: tuwi.dc

levels:

  - advanced

type: normal

category: must-know

tags:

  - linux

  - service

  - systemd

  - restart

  - reload

  - status

---

# Basic service management with `systemd`

---
## Content

In Ubuntu `upstart` will be deprecated in favor of `systemd`. Here is what you can do with it.

For each service unit, this command displays its full name followed by a note whether the unit has been loaded, its high-level and low-level unit activation state, and a short description[1]:

```
$ systemctl list-units --type service
                               --all

```
Use the following to start a service. Does not persist after reboot:

``` 
$ systemctl start SERVICE.service
```

Use this to stop a service. Does not persist after reboot:
```
$ systemctl stop SERVICE.service
```
Use the following to restart a service:

```
$ systemctl restart SERVICE.service
```
If the service supports it, this will reload the config files related to it without interrupting any process that is using the service:

```
$ systemctl reload SERVICE.service
```
The next command shows the status of a service and whether or not a service is currently running:

```
$ systemctl status SERVICE.service
```
To start a service on boot, use:
```
$ systemctl enable SERVICE.service
``` 

And to stop it from starting on boot:
```
$ systemctl disable SERVICE.service
```

---
## Revision

Service-specific actions (enable, stop, restart, reload) can be triggered by 

??? .


* systemctl
* res
* nano
* syserv

---
## Footnotes
[1:Example output]
```
UNIT
```
