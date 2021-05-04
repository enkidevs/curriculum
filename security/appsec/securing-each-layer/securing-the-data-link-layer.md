---
author: milesflo
type: normal
category: must-know
links:
  - >-
    [SANS
    Institute](https://www.sans.org/reading-room/whitepapers/protocols/applying-osi-layer-network-model-information-security-1309){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Securing the Data Link Layer


---

## Content

The Data Link Layer facilitates the transfer of data around a LAN network with protocols like [ARP](https://en.wikipedia.org/wiki/Address_Resolution_Protocol). As a quick reminder, ARP is responsible for identifying and associating IP addresses of network nodes with their MAC addresses. The ARP protocol is critical for ensuring that information anywhere higher up in the OSI Model reaches the correct endpoint, and as such attracts the attention of hackers.

**ARP Spoofing** involves sending misleading ARP messages to impersonate another node on the network. Doing so tricks the ARP protocol to deliver frames to the impersonator device instead of the original sender. The impersonating device can then perform more sophisticated attacks once this identity theft is achieved, such as denial of service, man-in-the-middle attacks, or session hijacking.

Once a hacker is inside the network MAC addresses are easy to find, and this vulnerability becomes trivial to exploit. Controls for this vulnerability include **MAC Address Filtering**: setting up a whitelist of MAC addresses that can gain access to the networks, and using Ethernet switches that integrate ARP-Spoofing detection software.

Another critical vulnerability to the Data Link Layer is the **packet storm**. A packet storm occurs in an unmanaged Ethernet switch when a data link connection is formed in the network topography that creates a loop. The unmanaged switch will start sending out packets in the loop indefinitely, creating white noise until it crashes. The switch will reboot and this process will repeat indefinitely. This will bring down every wired connection passing through the switch. This crash can only be resolved by physically terminating the loop, which becomes increasingly time consuming as a network increases in scale. To control this vulnerability, use **managed** Ethernet switches. These employ the Spanning Tree Protocol(STP) to test incoming data links for network topography loops *before* adding them to the network.


---

## Practice

What is one control in the Data Link Layer of the OSI Model?

???

- Using managed switches prevent topographical loops
- Locks and secure enclosures
- Use of a physical firewall
- Encrypted password exchange and storage


---

## Revision

??? involves changing a device's MAC address to impersonate another node on a network.

- ARP spoofing
- Van Eck phreaking
- Packet sniffing
- Proxy ARPing
- ARP sniping


---

## Quiz

### What is one control for this OSI model Layer?


```plain-text
What is one control in the Data Link Layer of the OSI Model?
```

 ???

- Using managed switches prevent topographical loops
- Locks and secure enclosures
- Use of a physical firewall
- Encrypted password exchange and storage
