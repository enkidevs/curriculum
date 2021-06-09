---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - home-directory

notes: ''

---
# How to get the user's home directory in Java

---
## Content

When creating Java/Swing GUI applications determining the user's home directory may be crucial. Luckily there is a simple way to find it:

```java
String homeDir = 
    System.getProperty("user.home");
```
 
