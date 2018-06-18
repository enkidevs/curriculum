---
author: pawel

levels:

  - advanced

  - medium

type: normal

category: tip

notes: ''

links:

  - >-
    [www3.ntu.edu.sg](https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaNativeInterface.html){website}

---
# Sending `Ctr+Alt+Del` key code to system from a class

---
## Content

Problem with above key combination comes from it's being served differently on hardware level. When you press those three buttons an interrupt of processor occurs. When an interrupt occu processor executes special program in specific memory location. 
To use this key combination access to proper windows library and using it through Java Native Interface (JNI) is needed.
 
