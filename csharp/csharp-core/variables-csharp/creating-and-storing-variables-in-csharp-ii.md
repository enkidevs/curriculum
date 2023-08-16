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

You can also create variables using other variables:
```csharp
int z = 3;
int a = z + 12;
Console.WriteLine(a);
// Outputs: 15
```

Note that variables are case-sensitive. These are three different variables:
```csharp
int number = 1;
int nUmber = 1;
int numbeR = 1;
```

---
## Practice

Which of the following is **NOT** a way to create a variable in **C#**?

???

- `b = 12;`
- `int x = 5;`
- `double y = 10.0;`
- `int a = 33;`


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
