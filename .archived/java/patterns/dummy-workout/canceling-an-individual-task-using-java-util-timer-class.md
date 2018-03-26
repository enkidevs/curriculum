---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

notes: ''

links:

  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/api/java/util/TimerTask.html){website}

---
# Canceling an individual task using `java.util.Timer` class

---
## Content

To cancel an individual task, you could develop a subclass of Timer that stores a list of all scheduled TimerTask instances. Then retrieve the instance that you want to cancel 

```java
TimerTask[] tasks =
  timer.getScheduledTasks();
tasks[0].cancel();
```