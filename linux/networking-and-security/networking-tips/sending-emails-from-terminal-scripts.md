---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - linux

  - terminal

  - sendemail

  - mail

  - gmail

  - 




---

# Sending emails from terminal / scripts

---

## Content

It is possible to send email from the terminal (or from inside scripts) by using `sendemail`.

Firstly, acquire the packages needed:
_libio-socket-ssl-perl_,
_libnet-ssleay-perl_ and _sendemail_.

Then, you can issue it with the following syntax:

```
$ sendemail -f fromuser@gmail.com \
 -t touser@domain.com \
 -u "subject" -m "message" \
 -s smtp.gmail.com \
 -o tls=yes -xu gmailaccount \
 -xp gmailpassword
```
