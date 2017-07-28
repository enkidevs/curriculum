# What is SSH?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More about Snowden effect](http://whatis.techtarget.com/definition/Snowden-effect)'
  - '[More on SSH](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server-in-ubuntu)'

---
## Content

Acronym from *Secure Socket Shell*, is a protocol that provides users with a safe way of accessing *remote systems/machines*. It can be seen as a more secure version of Telnet, by ensuring *strong authentication* and a *secure encrypted data transfer* between two computers over an insecure networking connection.

An SSH connection can be established through the use of the following 3 utilities:
- ssh: the CLI
- slogin: it's an alias for ssh, accepting the same flags
- scp: secure copy, the encrypted version of the copy

In 1995 Tatu Ylönen (a researcher from Helsinki University) lauched the first version of SHH (SSH-1). Over time many bugs were discovered and in 2006 a new set of Secure Shell protocols was adopted as a standard (SSH-2).

The old version used *public-key cryptography*[1] to authenticate the remote machine, which SSH-2 replaced with *Deffie-Helman key exchanged*[2]. There are several encryption methods available in SHH-2, but the most used ones are: *AES*[3] and *Blowfish*[4].

SSH is included by default in Linux, Unix-like and OSX operating systems, but not in Windows OS. Typically, an SSH server listens on the standard TCP port 22.

N.B. There is no evidence of any exploits for SSH-2 yet, however, some documents leaked by Edward Snowden state that some might be available.

---
## Practice

What type of encryption does SSH-2 use?
???

* Deffie-Helman key exchanged
* public-key cryptography
* Hashing

---
## Revision

What are the three utilities SSH comprises?
???

* ssh, slogin, scp
* rlogin, ssh, rcp
* rlogin, rsh, rcp

---
## Footnotes

[1:public-key encryption]
It uses a public and a private key to encrypt data. These keys are large numbers that have been paired together. The public key can be shared with everyone, whilst the private key is kept secret.

[2:Deffie-Helman key exchange]
It's a method of digital encryption which uses numbers raised to specific powers to generate decryption keys.

[3: AES]
It stands for Advanced Encryption Standard. It was also chosen by the U.S. government to protect classified data.

[4: Blowfish]
It's an encryption algorithm that uses an variable-length key (form 32 to 448 bits).
