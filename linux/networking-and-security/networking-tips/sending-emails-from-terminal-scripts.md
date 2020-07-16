---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - sendemail
  - mail
  - gmail
  - null
---

# Sending emails from terminal / scripts


---

## Content

It is possible to send email from the terminal (or from inside scripts) by using `sendemail`.

Firstly, acquire the packages needed:
 *libio-socket-ssl-perl*,
 *libnet-ssleay-perl* and  *sendemail*.

Then, you can issue it with the following syntax: 

```bash
sendemail -f fromuser@gmail.com \
 -t touser@domain.com \
 -u "subject" -m "message" \
 -s smtp.gmail.com \ 
 -o tls=yes -xu gmailaccount \
 -xp gmailpassword 
```
