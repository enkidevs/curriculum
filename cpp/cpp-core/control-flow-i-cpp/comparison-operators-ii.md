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

We can also use `&&` and `||` to combine conditions:

```cpp
if (num > 1 || num < -1) { // true
  std::cout << "num is greater than 1 or less than -1" << std::endl;
}
// num is greater than or equal to 1

if (num < 5 && num > 0) { // true
  std::cout << "num is between 0 and 5 " << std::endl;
}
// num is between 0 and 5

// ...
```


---

## Practice

Finish the code to output "num is greater than or equal to 3" if the condition evaluates to `true`.

```cpp
int num = 1;
if (??? ??? 1) { // true
  std::cout << "num is greater than or equal to " << num;
}
// num is greater than or equal to 1
```

- num
- >=
- <=
- 1


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