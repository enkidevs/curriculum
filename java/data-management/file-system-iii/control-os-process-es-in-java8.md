---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.infoq.com](http://www.infoq.com/articles/Java-8-Quiet-Features){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55c838333d25fc2e0079a878?search=khandelwalrinki
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Control OS `Process` es in `Java8`


---

## Content

Launching an OS process from within your code can have unexpected results or result to bad exceptions down the line.
 The problem with launching a process from within Java code so far has been the difficulty to control a process once it has been launched.

**Java8** introduced three new methods in the `Process` class in order to help with that:

- `destroyForcibly()`
- `isAlive()`
- `waitFor()` overload

`destroyForcibly()` terminates a process with a much higher degree of success than before. As a use-case you can check if a `process` didn't finish on time, terminate it and move forward:

```java
if (process.wait(MY_TIMEOUT, 
 TimeUnit.MILLISECONDS)){ /*success!*/ }
else { process.destroyForcibly(); }

```

`isAlive()` tells if a process launched by your code is still alive. You can make sure that before your code is done, you're not leaving any processes behind. 

```java
for (Process p : processes) {
 if (p.isAlive()) { 
p.destroyForcibly();}}
```


---

## Practice

What method from the `Process` class, introduced in Java8 should be used to terminate a process?

???

- `destroyForcibly` 
- `destroy` 
- `terminate` 
- `end` 
- `exit`


---

## Revision

In Java8  several methods have been added to the ??? class in order to make easier the management of OS processes.

- `Process` 
- `OS` 
- `ExternalProcess` 
- `Interaction`
