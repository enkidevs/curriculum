# Types of networks
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'http://study.com/academy/lesson/types-of-networks-lan-wan-wlan-man-san-pan-epn-vpn.html'

---
## Content

There are several types of **computer networks** in existence. Networks can be *characterised* based on their **purpose** as well as their **size**.

The **size** of a network can be determined by the *geographic area* they occupy and the *number of devices* that are connected to it.

Based on the **size** we can distinguish the following types of networks:
- `PAN` personal area network
- `LAN` local area network
- `WLAN` wireless local area network
- `MAN` metropolitan area network
- `WAN` wide area network

-**

`LAN` network connects a *small number* of devices. Typically used in a networked office building, school,  or home. Due to operating in a *limited space* `LANs` are usually owned, controlled and managed by a single person or organisation. They also tend to use certain connectivity technologies, primarily `Ethernet`[1] and `Token Ring`[2].

-**

`WAN` as the term implies, it is capable of spanning a large physical distance. The **Internet** is the largest `WAN`, spanning the Earth. A network devices called **router** connects more `LANs` to a `WAN`. In `IP` networking the **router** maintains both, a `LAN` address and a `WAN` address. `WANs` tend to use technology like `ATM` for connectivity over a long distance.

---
##FOOTNOTES

[1:Ethernet] is a physical and data link layer technology for `LANs`.

[2:Token Ring] maintains all the data frames that *continuously circulate* through the network.
The *frames* are shared by all devices connected to the network as follows:
- a **frame(packet)** arrives at he next device in the ring sequence
- the device **checks** whether the frame has a *message addressed to it*, if so it removes it
- the device holding the **frame** decides whether it wants to send a *message*, if so it inserts message data into the token frame and issues it back to the `LAN`.

[3:ATM] is a high-speed networking standard designed to support both *voice* and *data* communications. `ATM` is normally utilised by **Internet** service providers on their private long-distance networks.

---
## Practice

??? uses `ATM` technology for connectivity.

* `WAN`
* `LAN`
* `PAN`

---
## Revision

??? connects more `LANs` to a `WAN`.

* router
* `ATM`
* `Token Ring`
