---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: discussion
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Nested if else Statements

---

## Content

In C++, we can also have an `if-else` statement inside another `if-else` statement. This is called nesting.

Here's a basic example:
```cpp
int age = 20;

if(age >= 18){
  if(age <= 60){
    std::cout << "You are an adult." << std::endl;
  }
  else{
    std::cout << "You are a senior." << std::endl;
  }
}
else{
  std::cout << "You are not an adult." << std::endl;
}
```

> Can you decipher the code? What will happen if `age = 65`?

---

## Practice

What is the output of the following code?

```php
$age = 70;

if($age >= 18){
  if($age <= 60){
    echo "You are an adult.";
  }
  else{
    echo "You are a senior.";
  }
}
else{
  echo "You are not an adult.";
}
// Output: ???
```

- You are a senior.
- You are not an adult.
- You are an adult.

---

## Revision

What is the output of the following code?

```php
$age = 15;

if($age >= 18){
  if($age <= 60){
    echo "You are an adult.";
  }
  else{
    echo "You are a senior.";
  }
}
else{
  echo "You are not an adult.";
}
// Output: ???
```

- You are not an adult.
- You are a senior.
- You are an adult.