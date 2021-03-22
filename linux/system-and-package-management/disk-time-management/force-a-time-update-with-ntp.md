---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - time
  - ntp
  - ntpdate
  - update
  - sync
  - terminal
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Force a time update with `ntp`


---

## Content

To force an `ntp`[1] time update from the terminal, use the `ntpd` command.

This will synchronize the time based on the smallest error between the current time and the server's time:

```bash
sudo ntpd -gq server1 server2
```

Requests will be sent to servers provided as arguments, in addition to the ones specified in the `/etc/ntp.conf` file.

By default, an error is thrown if the time difference between the local time and the server's time is greater than 1000s.

The `-g` flag allows the local time to be set even if the difference exceeds the 1000s threshold. The `-q` flag will close `ntpd` after the time is set, replicating the deprecated `ntpdate` behavior.


---

## Revision

Sync the system time with the  `0.uk.pool.ntp.org`  server :

```bash
??? ??? 
  0.uk.pool.ntp.org
```

- `ntpd`
- `-gq`
- `ntupdate`
- `-f`


---

## Footnotes

[1:NTP]
Network Time Protocol
