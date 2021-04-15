---
author: tup
type: normal
category: hack
tags:
  - sed
  - comments
  - clean
notes: 'ARSENY, THIS IS AN EXPERT''S INSIGHT - DO NOT REJECT'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Clean configuration files


---

## Content

Over commented *configuration* files can be difficult to read and manage. 

Backup the original and clean the comments with a function added to the login script:

```shell
function clean_file {
sed -i.bak "/^\s*[#;]/d;/^$/d" $1
} 
```

The option `-i` is used to run an in-place edit. The suffix `bak` tells `sed` to create a backup of the file before the edit.

Some versions of `sed` might require `-i.tmp` to do the same thing.

The function is used to search for commented lines and empty lines and remove them. 

A shell script accepts comments starting with `#` or `;` . Therefore, this script can be modified to work for all kind of languages by changing the comment delimiters.

**Usage:**

```shell
sudo clean_file /etc/ntp/conf
```


---

## Revision

A script to delete comments and empty lines from configuration files would use the ??? command .

- sed
- clr
- del
- cd
