---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [DCN - Application Layer
    Introduction](https://www.tutorialspoint.com/data_communication_computer_network/application_layer_introduction.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Application Layer


---

## Content

**Application Layer** is the highest layer of the `OSI` model. It plays an *important role* in the *interaction* between users and user applications.

This layer enables applications that need to communicate through a network (e.g. web browsers, games, chats etc.) to send and receive data to and from servers or hosts on that network.

Specifically, the application layer **protocol** defines:

- message *type*
- message *syntax*
- *semantics* of message fields
- communication rules

The **Application Layer** provides numerous services via **protocols** built on top of lower-level layers:

**SMTP**

Simple Mail Transfer Protocol is a protocol running on top of `TCP/IP`, providing support for sending and receiving email messages over the Internet.

It was created and is maintained by the Internet Engineering Task Force (**IETF**). The default port used by `SMTP` is `25` for unencrypted connections, or `465` otherwise.

**TELNET**

Teletype Over Network Protocol[1], built as well on top of `TCP/IP` is a protocol that grants access to remote machines (hosts).

Running on port `23`, `telnet` lets you log in and control a machine remotely based on the set-up permissions.

**FTP**

File Transfer Protocol is the standard *mechanism* provided by `TCP/IP` for *copying* a file from one host to another.

Being often secured with other protocols, `FTP` is most commonly used to download or upload files to and from a server using the Internet. By default, `FTP` uses port `21`.

**MIME**

Multipurpose Internet Mail Extension is an extension of `SMTP` enabling transfer of *multimedia messages*. This enables the support for videos, images, songs and much more when sending and receiving emails.

**HTTP/HTTPS**

Hyper text transfer protocol (secure) is the protocol used for transferring files (text, graphic images, sound, video, and other multimedia files) on the World Wide Web.

`HTTP`, for example, is the protocol responsible for loading all websites when browsing the Internet.

**VOIP**

Voice over `IP` is a protocol that makes use of `UDP` protocol and can be defined as a technologies used for delivery of **voice communications** and multimedia sessions over a network.


---

## Practice

Which of the following protocols is an extension of **SMTP** ?

???

- MIME
- HTTP
- POP
- STMP
- EMTP
- TELNET


---

## Revision

Which of the following protocols was specifically designed for file transfer over a network?

???

- FTP
- HTTP
- SMTP
- HTTPS
- TELNET
- POP
- MIME


---

## Footnotes

[1:Telnet]
Teletype is actually the name of old electromechanical typewriters, ancestors of the nowadays terminal, used to communicate with a mainframe computer.

Telnet works as a shell command both on **Windows** (if enabled from settings) and **Unix** machines.
You can watch Star Wars Episode IV - made in ASCII art - from your terminal via `telnet`:

```plain-text
telnet towel.blinkenlights.nl
```
