---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - network
  - RX
  - TX
  - slurm
  - statistics
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Get real network statistics with `slurm`


---

## Content

`slurm` is a command line tool that displays real-time data
about the specified network interface:

```plain-text
`-Current RX and TX Speed`
`-Graph Top RX and TX Speed`
`-MBytes Received and Transmitted`
```

You can check this utility directly by using:

```bash
slurm -i <interface_name>
# for example:
slurm -i eth0
```

An example output would be:

```plain-text
Active Interface: wlo1   

Current RX Speed: 2.70 KB/s
Graph Top RX Speed: 8.60 KB/s  
Overall Top RX Speed: 8.60 KB/s   
Received Packets: 253624     
MBytes Received: 319.855 MB
Errors on Receiving: 0

=================================

Interface Speed: unknown

Current TX Speed: 0.05 KB/s
Graph Top TX Speed: 4.04 KB/s     
Overall Top TX Speed: 4.04 KB/s
Transmitted Packets: 147949
MBytes Transmitted: 15.595 MB
Errors on Transmission: 0  
```


---

## Revision

`slurm` is used as a ???

- measurement tool for internet speed
- energy drink
- measurement tool for cpu usage
- measurement tool for users access to a server
