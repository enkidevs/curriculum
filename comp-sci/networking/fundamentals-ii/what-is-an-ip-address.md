---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction

links:

  - '[www.computerhope.com](http://www.computerhope.com/jargon/i/ip.htm){website}'

parent: network-models

---

# What is an IP address?

---
## Content

An **IP address** is a *unique* identifier assigned to a computer or other similar device when connected to a network.

Chances are that while reading this you are connected to *the Internet*: the huge global **computer network** that makes possible the communication between billions of devices[1].

To make such *communication* possible, you need a way to distinguish yourself among the astonishing number of devices around you.

Here, the *IP*[2] comes in handy by uniquely mapping **addresses** to every devices within a **network**. This is similar to the way real-life *postal addresses* identify residences or other buildings throughout the world.

There's a big chance you have already encountered them as[3]:
```
//example IP address
25.255.0.1
```

With that being the shorthand notation. The actual format of an IP address (in `IPv4`) is:
```
xxx.xxx.xxx.xxx
```
Where `xxx` is the decimal representation of eight `0-1` (binary) bits. These eight bits can take values between `0000 0000` (**0** in decimal) and `1111 1111` (**255** in decimal)[4].

In reality, things are a little bit more complicated, with the IPs splitting into two categories:
 - **static** - hard-coded and constant
 - **dynamic** - frequently changing, being assigned by other networking device

**IP addresses** became a popular concept and nowadays are taken for granted by being part of the `TCP/IP`[5] protocol stack, around which the Internet was built.
Alternatives to the **TCP/IP stack**, such as `AppleTalk`, exist, but the former proved superior and became the standard.

---
## Practice

How many bits of memory does an `IPv4` address occupy?

???


* 32
* 8
* 255
* 16
* 4
* 36

---
## Revision

What version of `IP` has implemented addresses in the following format?
```
x.x.x.x
where x = 8 bits
```

???


* `IPv4`
* `IPv6`
* `IPv1`
* `IPv3`

---
## Footnotes
[1:Trivia]
Garner, Inc. estimates that there will be almost **21 billion** devices connected to the Internet by year `2020`.

[2:IP acronym]
`IP` is the acronym for **Internet Protocol**.

[3:Clarification]
This form is specific to the fourth version of *Internet Protocol*, called `IPv4`.

In addition to `IPv4`, the sixth version of the Internet Protocol (`IPv6`), is also in use since 1998.

The syntax of the latter is:
```
xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx
```
where `xxxx` stands for a hexadecimal number.

Even though `IPv6` solves numerous problems encountered in `IPv4`, its overall usage is around `10%`, `IPv4` accounting for the rest.

[4:IP Range]
The `IPv4` format, using `32` bits, allows the existence of `2^32` (4 294 967 296) different IP addresses.

[5:Further information]
`TCP/IP` represents the most common stack of protocols used by computer networks.

Its name comes from the most famous protocols in use within the stack:
 - `TCP` short for **Transmission Control Protocol**
 - `IP` short for **Internet Protocol**

