---
author: catalin
type: normal
category: must-know
links:
  - >-
    [www.tutorialspoint.com](https://www.tutorialspoint.com/computer_fundamentals/computer_ports.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is a port?


---

## Content

In *computer networking*, a **port**[1] is an essential component of the *Internet Protocol*. It is passed as a numerical value that identifies individual services on a networked computer.

A *web server* and a *mail server* can be hosted by the same machine, but they need to be assigned **different** port numbers.

While the **IP address** identifies a single machine, the combination of **IP address** and **port number** identifies a specific service running on that machine.

If you think of the IP address as the equivalent of a postcode, then the port number represents the house number
A building located at *249 Oak St.* might have a café at *249 Oak* ***#1***, a bookshop at *249 Oak* ***#2***, and a so on.

The syntax used to specify ports is `ip:port`. If our machine is located at `13.0.0.0`, we can have a *mail server* running at:

```plain-text
13.0.0.0:9000
```

and a *web server* running at:

```plain-text
13.0.0.0:9001
```

To represent ports, a `16 bit` number is used, ranging from `0` to `65535`, yet the first `1023` ports are reserved for **well-known** application protocols such as:

- `HTTP` with port `80`
- `FTP` with port `21`

When you visit an address such as `www.enki.com`, you won't be required to also specify its port number.
This happens because the HTTP protocol, used to get the page, runs by default on port `80`.


---

## Practice

What is HTTP's default port?

???

- `80`
- `21`
- `81`


---

## Revision

A port is an essential component of the ??? .

- `IP address`
- `networked devices`
- `Internet`


---

## Footnotes

[1:ports]
The term **port** has also other uses in computer science:

- physical docking points usually between devices and sockets (eg. USB port)
- action of moving a program from one operating system environment to another
