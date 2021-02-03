---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [More on
    SSH](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server-in-ubuntu){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# SSH Security

---

## Content

In 1995, Tatu Ylönen (a researcher from Helsinki University) launched the first version of SSH (SSH-1). Over time, many bugs were discovered and in 2006 a new set of Secure Shell protocols was adopted (SSH-2).

The old version used _public-key cryptography_[1] to authenticate to the remote machine, which SSH-2 replaced with _Diffie–Hellman key exchange_[2].

There are several encryption methods available in SSH-2, but the most used ones are _AES_[3] and _Blowfish_[4].

> 💡 There is no evidence of any exploits for SSH-2 yet, however, some documents leaked by Edward Snowden state that some might be available.

---

## Practice

What type of encryption does SSH-2 use?

???

- AES or Blowfish
- Deffie-Helman key exchanged
- public-key cryptography
- hashing

---

## Footnotes

[1:Public-key encryption]
It uses a public and a private key to encrypt data. These keys are large numbers that have been paired together. The public key can be shared with everyone, whilst the private key is kept secret.

[2:Diffie–Hellman key exchange]
It's a method of digital encryption which uses numbers raised to specific powers to generate decryption keys.

[3: AES]
It stands for Advanced Encryption Standard. It is chosen by the U.S. government to protect classified data.

[4: Blowfish]
It's an encryption algorithm that uses an variable-length key (form 32 to 448 bits).
