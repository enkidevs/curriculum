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

```csharp
if (condition) {
  // execute this code
}
```

The program will only execute the code if the condition has been met.

```csharp
int num = 3;
if (num > 0) {
  Console.WriteLine(num + " is a positive number");
}
```
The code above will print '3 is a positive number'.
