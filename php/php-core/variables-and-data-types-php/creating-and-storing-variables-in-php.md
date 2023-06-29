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

In **PHP**, variables are declared with a dollar sign `$` and do not require a type to be specified:
```csharp
$x = 5;
$y = 10.0;
```

To print the value of a variable we use `echo`:
```csharp
echo $x;
// Outputs: 5
echo $y;
// Outputs: 10.0
```

You can also create variables using other variables:
```csharp
$z = $x + $y;
echo $z;  
// Outputs: 15.0
```

Note that variables are case-sensitive. These are three different variables:
```php
$number = 1
$nUmber = 1
$numbeR = 1
```

---
## Practice

Which of the following is the correct way to create a variable in **PHP**?

???

- `$x = 5;`
- `x = 5;`
- `@y = 10.0;`
- `*z = 3;`


---
## Revision

Finish the code to create a new variable called `c` by summing the values of the `a` and `b` variables. Print the new variable.
```cpp
$a = 3;
$b = 7;

??? = $a ??? $b;

??? $c;
// 10
```

- `$c`
- `+`
- `echo`
- `-`
- `plus`
- `print`
