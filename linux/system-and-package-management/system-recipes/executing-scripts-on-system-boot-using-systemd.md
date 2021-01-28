---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - system
  - boot
  - execute
  - rc.local
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Executing scripts on system boot using `systemd`


---

## Content

Since most of the distributions migrated to `systemd`, the old way of running a script on boot by adding it to the `rc.local` won't be supported for long.

Now, to run a script on boot, you have to create a new file in `/etc/systemd/system` and add the following contents:

```plain-text
[Unit]
Description=My script

[Service]
ExecStart=/path/myscript

[Install]
WantedBy=multi-user.target
```

The name of the file should be something like `myscript.service`. Then, you have to enable the new service to start on system boot:

```bash
systemctl enable myscript.service
```

You might also have to set execute permission for the script to work:

```bash
chmod 755 myscript.service
```


---

## Revision

You can execute a script on boot by adding it to the 

???  file .

- rc.local
- boot
- rc.boot
