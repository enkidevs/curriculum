---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Creating and Storing Variables

---

## Content

Variables are crucial in programming. They are named locations in memory that store a value, which can be later retrieved and used. They allow us to store and manipulate data in a program.

In **C#**, variables must be declared with their type before they can be used:
```csharp
int x = 5;
double y = 10.0;

// int = variable type
// x = variable name
// 5 = variable's value
```

To access the value of a variable, you can type the name of the variable inside a `Console.WriteLine()`:
```csharp
Console.WriteLine(x);
// Outputs: 5
Console.WriteLine(y);
// Outputs: 10.0
```

You can create variables using other variables:
```csharp
int z = x + y;
Console.WriteLine(z);
// Outputs: 15
```

Note that variables are case-sensitive. These are three different variables:
```php
int number = 1;
int nUmber = 1;
int numbeR = 1;
```

---
## Practice

Which of the following is **NOT** a way to create a variable in **C#**?

???

- b = 12;
- int x = 5;
- double y = 10.0;
- int a = 33;


---
## Revision

Finish the code to create a new integer variable called `c` by summing the values of the `a` and `b` variables. Print the new variable.
```cpp
int a = 3;
int b = 7;

??? ??? = a ??? b;

Console.WriteLine(c);
// 10
```

- `int`
- `c`
- `+`
- `-`
- `plus`
- `double`
