---
author: Stefan-Stojanovic
type: normal
category: must-know

---

# Creating and Storing Variables

---

## Content

A variable is a named location in memory that can store a value, to be later retrieved and used. 

In **C#**, variables must be declared with their type before they can be used:
```csharp
int x = 5;
double y = 10.0;
```

We can then print the variables by passing them into `Console.WriteLine()`:
```csharp
Console.WriteLine(x);
// Outputs: 5
Console.WriteLine(y);
// Outputs: 10.0
```