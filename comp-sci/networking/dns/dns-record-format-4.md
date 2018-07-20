---
author: TebbaVonMathenstein

levels:

  - beginner


tags:

  - introduction

  - workout


type: exercise

category: must-know

standards:
  cs.networking.dns.6: 1000

links:

- '[TODO: THIS](https://enki.com)'

---

## Exercise

# dns-record-format-3

## Content

todo
---
## Practice

This is a hex-dump of a DNS response.

```
0000   ef 0a 81 80 00 01 00 01 00 00 00 00 03 77 77 77   ï............www
0010   06 67 6f 6f 67 6c 65 03 63 6f 6d 00 00 01 00 01   .google.com.....
0020   c0 0c 00 01 00 01 00 00 00 8d 00 04 d8 3a c0 04   À...........Ø:À.
```

Which of the following values is the transaction id?

???

* `ef0a` (line one)
* `c00c` (line three)
* `676f6f676c65` (line two)
* `8180` (line one)


---
## Revision

DNS queries and responses both always have an entry in the ___ section.

???

* questions
* answers
* authority
* additional information
