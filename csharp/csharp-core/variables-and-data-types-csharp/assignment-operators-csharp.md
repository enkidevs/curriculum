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
  context: standalone
---

# Assignment Operators in C#

---

## Content

In C#, assignment operators are used to assign values to variables.

The most common assignment operator is the = operator, which is used to assign a value to a variable:
```csharp
int x = 3;
int y = 15;

Console.WriteLine(x);
// Outputs: 3
Console.WriteLine(y);
// Outputs: 15
```

C# also includes compound assignment operators such as `+=`, `-=`, `*=`, and `/=`. These operators modify the value of the variable:

```csharp
// equivalent to x = x + 5
x += 5;

Console.WriteLine(x); 
// Outputs: 8

// equivalent to y = y / 3
y /= 3;

Console.WriteLine(y);
// Outputs: 5
```

---
## Practice

Which operator is used to assign a value to a variable in **C#**?

???

- `=`
- `==`
- `assign`
- `is`

---
## Revision

Which of these variables uses the recommended way of assigning values in **C#**?

```r
int x = 10;
y = 2;
```

???

- x
- y
