# What is a port?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.tutorialspoint.com/computer_fundamentals/computer_ports.htm'

---
## Content

In *computer networking*, a **port**[1] is an essential component of the *Internet Protocol*. They are numbers that identify individual services on a networked computer.

A *web server* and a *mail server* can be hosted by the same machine, but they need to be assigned **different** port numbers.

While the **IP address** identifies a single machine, the combination of **IP address** and **port** identifies a specific service running on that machine.

If you think of an IP address like a mailing address then the port is like the apartment or office number.
A building located at *249 Oak St.* might have a café at *249 Oak **#1***, a bookshop at *249 Oak **#2***, and a so on.

The syntax used to specify ports is `ip:port`. If our machine is located at `13.0.0.0`, we can have a *mail server* running at:
```
13.0.0.0:9000
```
and a *web server* running at:
```
13.0.0.0:9001
```
To represent ports, a `16 bit` number is used, ranging from `0` to `65535`, yet the first `1023` ports are reserved for **well-known** application protocols such as:
 - `HTTP` with port `80`
 - `FTP` with port `21`

When you visit an address like `www.enki.com` you can clearly see there is no associated port displayed.
This happens because the port for the `HTTP` protocol is defined as a default and doesn't need to be explicitly stated.
---
## Footnotes

[1:ports]
The term **port** has also other uses in computer science:
 - physical docking points usually between devices and sockets (eg. USB port)
 - action of moving a program from one operation system environment to another

[2:Address]
For example sake, the protocol of the address was omitted. A full address in a computer network is made up by:
 - the **protocol**
 - the **IP address**
 - the **port**

For example:
```
http://127.0.0.1:9000
```

---
## Practice

Where is `HTTP`'s port reserved
??? ?

* `80`
* `21`
* `81`
---
## Revision

A port is an essential component of the ??? .

* `IP`
* `Connected devices`
* `Internet`
