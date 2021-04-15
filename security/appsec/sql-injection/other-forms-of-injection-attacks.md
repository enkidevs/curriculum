---
author: lizTheDeveloper
type: normal
category: pattern
links:
  - >-
    [Testing for Command Injection (OTG-INPVAL-013)](https://wiki.owasp.org/index.php/Testing_for_Command_Injection_(OTG-INPVAL-013)){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Other forms of Injection attacks


---

## Content

Injection is not a new technique- attackers have been injecting input with malicious data for a long time.
Consider this URL example:

```plain-text
http://sensitive/cgi-bin/
  userData.pl?doc=user1.txt
```

Now what would happen, if a malicious user were to change it to this:

```plain-text
http://sensitive/cgi-bin/
  userData.pl?doc=/bin/ls|
```

This will execute the command `/bin/ls`.


---

## Practice

Modify the URL to execute `/bin/ls|`

```plain-text
http://sensitive/cgi-bin/
userData.pl?doc=???
```

- `/bin/ls|`
- `;ls|`
- `;$bash% ls .`


---

## Revision

Modify the URL to execute `;cat /etc/passwd`

```plain-text
http://sensitive/something.php?dir=???
```

- `%3Bcat%20/etc/passwd`
- `;cat /etc/passwd`
- `;$bash% cat /etc/passwd`
