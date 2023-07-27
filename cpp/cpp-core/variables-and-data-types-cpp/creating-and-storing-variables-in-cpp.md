---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# Creating and Storing Variables

---

## Content

A variable is a named location in memory that can store a value, to be later retrieved and used. 

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

