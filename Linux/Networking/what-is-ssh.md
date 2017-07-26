# What is SSH
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

**SSH**, acronym from *Secure Socket Shell*, is a protocol that provide users with a safe way of accessing *remote computers*. It comes as a more secure replacement of Telnet. It ensures *strong authentication* and a *secure encrypted data transfer* between two computers over an insecure networking connection.

SSH is based on three utilities:
- slogin: it's an alias for ssh client
- ssh
- scp: it stands for secure copy protocol

In 1995 Tatu Ylönen ( a researcher from Helsinki University ) lauched the first version of SHH ( SSH-1 ). Over time many bugs were discovered and in 2006 a new set of Secure Shell protocols was addopted as a standard ( SSH-2 ). The old version used *public-key cryptography*[1] to authenticate the remote computer. In SSH-2 it was replaced with *Deffie-Helman key exchanged*[2]. There are several encryption methods available in SHH-2, but the most widely used ones are: *AES*[3] and *Blowfish*[4].

SSH is included by default in Linux, Unix-like and OSX operating systems, but unfortunately not in Windows OS. Typically an SSH server listens on the standard TCP port 22.

N.B. There is no evidence of any exploits in SSH-2 yet, however Edward Snowden leaked some information in 2013 that says NSA ( National Security Agency ) might be able to decrypt some SSH traffic.
---
## Practice

What type of encryption does SSH-1 use?
???

* public-key cryptography
* Deffie-Helman key exchanged
* Hashing

---
## Revision

What are the three utilities SSH comprises?
???

* slogin, ssh, scp
* rlogin, ssh, rcp
* rlogin, rsh, rcp

---
## Footnotes

[1:public-key encryption]
It uses a public and a private key to encrypt data. These keys are basically large numbers that have been paired together. The public key can be shared with everyone, whilst the private key is kept secret.

[2:Deffie-Helman key exchange]
It's a method of digital encryption which uses numbers raised to specific powers to generate decryption keys.

[3: AES]
It stands for Advanced Encryption Standard. It was also chosen by the U.S. government to protect classified data.

[4: Blowfish]
It's an encryption algorithm that uses an variable-length key ( form 32 to 448 bits ).
