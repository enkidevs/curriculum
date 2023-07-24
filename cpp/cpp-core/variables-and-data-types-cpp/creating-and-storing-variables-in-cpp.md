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

Variables are a fundamental concept in programming. A variable is a named location in memory that can store a value, and later retrieve and use that value. 

They allow you to store and manipulate data in a program.

In **C++**, variables must be declared with their type before they can be used. For example:
```cpp
int x = 5;
double y = 10.0;
```

To access the value of a variable, you can use the `std::cout <<` operator followed by your variable:
```cpp
std::cout << x;
// Outputs: 5

std::cout << y;
// Outputs: 10.0
```

You can also create variables using other variables:
```cpp
int a = x + y;
std::cout << a;
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

Which of the following is **NOT** a way to create a variable in **C++**?

???

- x = 12;
- int x = 5;
- double y = 10.0;
- int y = 33;

---
## Revision

Finish the code to create a new integer variable called `z` by summing the values of the `x` and `y` variables. Print the new variable.
```cpp
int x = 3;
int y = 7;

??? ??? = x ??? y;

std::cout << z;
// 10
```

- `int`
- `z`
- `+`
- `-`
- `plus`
- `double`
