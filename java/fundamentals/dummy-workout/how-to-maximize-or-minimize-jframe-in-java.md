---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - gui

  - jframe

notes: ''

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/3965336/how-to-minimize-a-jframe-window-from-java){website}

---
# How to maximize or minimize `JFrame` in Java

---
## Content

It turns out that it is quite a straightforward task involving only a few lines of code.

```java
MyJFrame myFrame = new MyJFrame();
//maximize the jframe
myFrame.setState(Frame.NORMAL);
myFrame.setVisible();

//minimize the jframe
myFrame.setState(Frame.ICONIFIED);
```
 
