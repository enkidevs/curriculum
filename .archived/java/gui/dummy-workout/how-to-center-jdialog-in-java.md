---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - gui

notes: ''

links:

  - >-
    [www.coderanch.com](http://www.coderanch.com/t/343686/GUI/java/setLocationRelativeTo){website}

---
# How to center `JDialog` in Java

---
## Content

The simplest way of make `JDialog` appear in the centre of the screen is to use code similar to the one below:

```java
JDialog d = new JDialog();
d.setSize(400, 300);
d.setLocationRelativeTo(null);
d.setVisible(true);
```