---
author: Stefan-Stojanovic
tags:
  - introduction
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

# Comparison Operators

---

## Content


**C++** includes all the standard comparison operators you would expect:

| Operator |             Name            |
|----------|-----------------------------|
| ==       | is equal to                 |
| !=       | is not equal to             |
| <        | is less than                |
| <=       | is less than or equal to    |
| >        | is greater than             |
| >=       | is greater than or equal to |

---

## Practice

Finish the code to output "num is greater than or equal to 3" if the condition evaluates to `true`.

```cpp
int num = 5;
if (??? ??? 3) { // true
  std::cout << "num is greater than or equal to 3" << num;
}
// num is greater than or equal to 3
```

- `num`
- `>=`
- `<=`
- `1`


---

## Revision

Finish the code to to make the comment true:

```cpp
int num = 3;
if (num ??? 2) {
  std::cout << ??? << num << std::endl;
}
// num doesn't equal 2

```

- !=
- "num doesn't equal "
- "num equals "
- ==