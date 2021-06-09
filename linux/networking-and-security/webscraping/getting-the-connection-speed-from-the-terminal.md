---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - speedtest
  - wget
  - speed
links:
  - '[github.com](https://github.com/sivel/speedtest-cli){website}'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Getting the connection speed from the terminal


---

## Content

To get your internet speed from the terminal there is a tool called `speedtest-cli`
and we can set it up as below:

```bash
pip install speedtest-cli
```

`pip` is part of the `python-pip` package and it requires a valid Python install to use it.

We should get something like this:

```bash
speedtest-cli
Retrieving speedtest.net configuration..
Retrieving speedtest.net server list...
Testing from Comcast Cable (x.x.x.x)...
Selecting best server based on ping...
Hosted by XXX [12.03 km]: 44.028 ms
Testing download speed.................
Download: 32.29 Mbit/s
Testing upload speed..................
Upload: 5.18 Mbit/s
```


---

## Revision

A tool to test your internet connection using the terminal is ???.

- speedtest-cli
- internetspeed-cli
- internetTest-cli
- testspeed-cli
