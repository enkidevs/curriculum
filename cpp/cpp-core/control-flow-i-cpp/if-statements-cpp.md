---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know

---

# If Statements

---

## Content

The flow of a program depends on the order in which individual commands are executed. Control flow statements like the `if` statement allow us to manage the order using conditions.

```cpp
if (condition) {
  // execute this code
}
```

The program will only execute the code if the condition has been met.

```cpp
int num = 3;
if (num > 0) {
  cout << num << " is a positive number";
}
```

The output of the above is:
```plain-text
3 is a positive number
```

