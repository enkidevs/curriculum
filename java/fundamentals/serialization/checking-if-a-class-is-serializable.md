---
author: pawel
type: normal
category: tip
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=45){website}
notes: ''
---

# Checking if a class is serializable


---

## Content

To check if a class is serializable you can use the utility that comes with JDK - `serialver`. Try using it in command line:

```plain-text
c:\> serialver -show
```

This will display a simple user interface that allows you to enter a full class name and then press Enter key or click Show button to display the `serialVersionUID` number.
 
