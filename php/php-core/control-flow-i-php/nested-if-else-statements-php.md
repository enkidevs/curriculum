---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
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

In PHP, we can have an `if-else` statement inside another `if-else` statement. This is called nesting.

Nested `if-else` statements can be used to perform complex decision making.

Here's a basic example:
```php
$age = 20;

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
```

In this example, the program first checks if `age` is greater than or equal to 18. 

If true, it enters the next level of the `if` statement and checks if `age` is less than or equal to 60. 

If true, it outputs `"You are an adult."` 

If false, it outputs `"You are a senior."` 

If the first `if` condition is false, it outputs `"You are not an adult."`.



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