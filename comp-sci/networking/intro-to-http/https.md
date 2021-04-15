---
author: catalin
type: normal
category: must-know
links:
  - >-
    [robertheaton.com](http://robertheaton.com/2014/03/27/how-does-https-actually-work/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# HTTPS


---

## Content

`HTTPS`, short for *HyperText Transport Protocol Secure*, is a protocol for **secure communication** over a computer network.

Chances are you've already visited websites enforcing this protocol:

```plain-text
https://enki.com/
// URL starts with protocol name
```

`HTTPS` is the same as previously discussed **HTTP**, but enhanced with an *encryption layer* using `TLS`[1], which aims to provide privacy and data integrity between the participants.

The communication between a *client* (take your web browser, for example) and a *server* (`enki.com`) is still done via the well-known and understood **HTTP**, yet all messages are:

- **encrypted** before being sent
- **decrypted** when they arrive at either the client or the server

Prior to the actual communication, a `TLS` connection (known as a handshake) must be established between the two parties, following these steps:

- `hello`: both *client* and *server* will decide on which *cipher suite*[2] and what version of `TLS` they will use for encryption
- `certificate exchange`: to prove its identity, the *server* must provide a **certificate**[3] that the client must trust before the communication can begin
- `key exchange`: both parties decide on a symmetric key used for both encryption and decryption

The strategy above provides protection against various malicious practices such as **man-in-the-middle attacks**[4]. Even if someone intercepts your messages, all the data will be illegible due to the encryption algorithm.

Note that instead of port `80`, HTTPS uses port `443`.

Although `HTTPS` was initially used for sensitive online transactions or emails, it has become standard and most web-servers provide the protocol by default.


---

## Practice

What type of key is used for encryption and decryption over **HTTPS** ?

???

- symmetric
- asymmetric
- private
- secure
- TLS
- certificate


---

## Revision

What protocol is used by **HTTPS**, but not **HTTP** ?

???

- `TLS`
- `SMTP`
- `IMAP`
- `TCP`
- `IP`


---

## Footnotes

[1:TLS/SSL]
The **Transport Layer Security** (TLS), and its out-of-date predecessor **Secure Sockets Layer** (SSL), are cryptographic protocols that provide communication security over a computer network.

This layer of security has two main purposes:

- verifying that you are talking directly to the server that you think you are talking to
- ensuring that only the server can read what you send it and only you can read what it sends back

[2:Cipher Suite]
A **cipher suite** is a combination of authentication, key exchange and encryption algorithms.

[3:certificate]
A digital certificate is an electronic *passport* that allows a person, computer or organization to exchange information securely over the Internet using the public key infrastructure (`PKI`).

When verifying a **certificate**, the client will check if either it:

- is implicitly trusted
- is trusted by one of the Certificate Authorities (`CA`s)

[4:man-in-the-middle]
A **man-in-the-middle attack** is a type of cyberattack where a malicious actor inserts themself into a conversation between two parties, impersonates both parties and gains access to information that the two parties were trying to send to each other.
