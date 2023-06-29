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

# Assignment Operators in C++

---

## Content

In **C++**, assignment operators are used to assign values to variables.

The most common assignment operator is the `=` operator, which is used to assign a value to a variable:
```cpp
int x = 5;
int y = 10;

std::cout << x;
// Outputs: 5
std::cout << y;
// Outputs: 10
```

**C++** also includes compound assignment operators such as `+=`, `-=`, `*=`, and `/=`. These operators modify the value of the variable:

```cpp
// equivalent to x = x + 5
x += 5;  

std::cout << x;  
// Outputs: 10

// equivalent to y = y * 2
y *= 2;

std::cout << y;
// Outputs: 20
```


---
## Practice

Which operator is used to assign a value to a variable in **C++**?

???

- `=`
- `<-`
- `->`
- `is`

---
## Revision

What value will `y` hold?

```r
int y = 10;
y *= 2;
```

???

- 20
- 10
