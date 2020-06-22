---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to

links:

  - >-
    [www.tecmint.com](http://www.tecmint.com/20-netstat-commands-for-linux-network-management/){website}

  - >-
    [www-01.ibm.com](https://www-01.ibm.com/support/knowledgecenter/ssw_aix_71/com.ibm.aix.performance/using_netstat.htm){website}

---
# Make use of `netstat`

---
## Content

`netstat` command line tool is one of the most basic network service debugging tools.

Listing the state of all sockets ( TCP + UDP) :
```bash
netstat -a
```

Listing TCP ports connections: 
```bash
netstat -at
```

Displaying RAW network statistics:
```bash
netstat --statistics --raw
```

Show the apps that use internet connection at the moment:

```bash
netstat -lantp | grep -i stab |
 awk -F/ '{print $2}' | sort | uniq
```

List the number and type of active network connections:
```bash
netstat -ant | awk '{print $NF}' |
 grep -v '[a-z]' | sort | uniq -c
```

---
## Practice

How do you display **RAW** network statistics?
```
??? --raw ???
```

* netstat
* --statistics
* awk
* grep
* -stats
* all

---
## Revision

`netstat` is a ??? .

* network statistics utility
* terminal browser
* way to connect to internet
 
 
