# Prefix and postfix of increment operators
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

notes: ''

---
## Content

Java supports 2 forms of shorter incrementation of variables:

```java
int i = 3;
int j = 10
System.out.println(++i); // Prints 4
System.out.println(j++); // Prints 10
```
The prefix form performs the increment or decrement operation and then returns the value of the operation, while postfix form returns the current value of the expression and only then performs the increment or decrement operation on that value.