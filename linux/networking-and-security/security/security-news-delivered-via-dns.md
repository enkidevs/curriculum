---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - dns
  - security
  - dig
  - short
  - terminal
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Security news delivered via DNS


---

## Content

The public service `istheinternetonfire.com` provides the latest short security news via DNS.

View on the terminal using:

```bash
dig +short -t txt istheinternetonfire.com
```

A sample output of such news:

```bash
"Make ImageMagick Great Again!
CVE-2016-3714:RCE in ImageMagick 
https://imagetragick.com/"
```


---

## Revision

You can get security news via DNS from 

???.

- istheinternetonfire.com
- google.com/security
- facebook.com/security
- twitter.com/security/api
