---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - user-directory

notes: ''

---
# How to determine the directory your Java application was started in

---
## Content

If you ever need to figure out the current working directory, you can get this information from the system properties.

```java
String userDir = 
    System.getProperty("user.dir");
```
 
