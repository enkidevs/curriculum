---
author: tuwidc
type: normal
category: hack
tags:
  - awk
  - linux
  - bash
  - nginx
  - apache
  - webserver
  - user-agent
links:
  - >-
    [A more in-depth
    article](http://www.the-art-of-web.com/system/logs/){website}
notes: ''
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# How to analyse a server's log files


---

## Content

There are many tools that allow you to generate reports on who is visiting your site, but you might find it useful to know how to do this by yourself. 

One of the most common log file format is[1]:

```plain-text
%h %l %u %t "%r" %>s %b 
       "%{Referer}i" "%{User-agent}i"
#Combined Log Format
66.249.64.13 - - [18/Sep/2004:
 11:07:48 +1000] "GET /contact.html 
 HTTP/1.0" 200 468 "-" "Googlebot/2.1"
#- is a valid placeholder
```

For a log of that type, you can check which user-agents accessed your -let's say- contact page:

```bash
awk -F\" '($2 ~ /contact\.html/)
      {print $6}' access_log_file
Googlebot/2.1
```

The above command uses `awk` text processor:

- `-F\"`(*field separator*) splits by `"` (there will be 6 columns after splitting the content before each `"`)
- `$2 ~` checks if the second column after splitting matches a regular expression
- `/contact\.html/` is the regex we are looking for
- `{print $6}` tells awk to write only the 6th column instead of the whole line


---

## Practice

If you split the following example by space (default awk splitting value), which column number would `[18/Sept/2004:` represent ?

```plain-text
66.249.64.13 - - [18/Sep/2004:
11:07:48 +1000] "GET /contact.html 
HTTP/1.0" 200 468 "-" "Googlebot/2.1
# ???
```

- `$4`
- `$9`
- `$3`
- `$2`


---

## Revision

To change the default `awk` field separator, the ??? flag is used.

- `-F`
- `-S`
- `-s`
- `-f`


---

## Footnotes

[1:Format]

- `%h`   = IP address of the client who made the request
- `%l`   =  RFC 1413 identity of the client
- `%u`   =  userid of the person requesting the document
- `%t`   =  Time when the server finished processing the request
- `%r`   =  Request line from the client in double quotes
- `%>s`  =  Status code sent back
- `%b`   =  Size of the object returned
