---
author: catalin
type: normal
category: tip
links:
  - >-
    [blog.thilinamb.com](http://blog.thilinamb.com/2008/12/how-to-increase-java-stack-size.html){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55ef1843d2b1123000710e27?search=khandelwalrinki

  https://insights.enki.com/#/contrib/others/55f05f981baba32f002fd31d?search=kha
---

# Most common reason behind **stack overflow** error


---

## Content

JVM (Java Virtual Machine) is an implementation of a stack engine. When it compiles a java file, JVM goes through each line of code and pushes (stack equivalent of adding) each variable and method call. 

The `StackOverflowError` explicitly states what is happening with the stack: it has to keep pushing data, even though it reached its memory limit.

A common reason behind this is a faulty recursion algorithm (the function calls itself to infinity) and can be solved by adding a terminating condition or changing the old one.

If a program requires an extended stack (not because of a flaw in the logic), you can use the following command to change the default stack size:

```java
java -Xss:512k MyApplication
// increases stack to 512Kb
```

Default stack sizes of java threads differ depending upon whether you are using IA32 and X64 from `64` to `512 KB`.

For JVM internal threads (i.e. GC, code generation thread) a special "system" stack of size `256 KB` is used.
