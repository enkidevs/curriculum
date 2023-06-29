---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Printing

---

## Content

In **C#**, you can use the `Console.Write()` method to print[1] a message to the console without moving to a new line:
```csharp
Console.Write("Hello, world!");
```

To also move to a new line after printing, you can use the `Console.WriteLine()` method:

```csharp
Console.WriteLine("Hello, world!");
```


To output a value from a variable you can do:
```csharp
int num = 5;
Console.WriteLine("num is equal to " + num);

// num is equal to 5
```

---
## Practice

Print a message to the console without adding a newline character after the message:
```csharp
???("Hello, world!")
```

- `Console.Write`
- `Console.WriteLine`

---
## Practice

Print a message to the console and move to a new line:
```csharp
???("Hello, world!")
```

- `Console.WriteLine`
- `Console.Write`

---
## Footnotes

[1: Printing]
Printing messages in **C#** is useful for debugging and for communicating information to the user.
