---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=16){website}
---

# Avoid empty catch blocks


---

## Content

When an exception occurs, if a catch block is left empty it will seem to the user that the program has stopped working with no explanation.

Even if the caught exception is not one that the program can recover from, some kind of message should be displayed to the user explaining the reason for the program's termination.

If no catch block is supplied within the method where the exception occurs, then the exception can be passed up the call stack where it can be handled elsewhere. This is sometimes more appropriate than handling the exception within the same method, and certainly better than catching the exception and doing nothing with it.
 
