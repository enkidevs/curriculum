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

# NOT (!) Operator

---

## Content

The `!` operator, also known as the logical `NOT` operator, is used to invert the value of a boolean expression. 

If the expression is true, `!` will make it false, and vice versa.

Here's an example:
```cpp
bool a = true;

if(!a)
{
  Console.WriteLine("a is false.");
}
else
{
  Console.WriteLine("a is true.");
}
// Output: "a is true."
```

In the example above, `!a` is `false`, because it reverses the original `a` that is `true`. Therefore, the else block executes.

---

## Practice

Finish the code to output 'a is false'?

```cpp
bool a = ???;

if(???) 
{
  Console.WriteLine("a is false.");
} 
else 
{
  Console.WriteLine("a is true.");
}
// Output: a is false 
```

- false
- `!a`
- `!b`
- true

---

## Revision

What is the output of the following code?

```cpp
bool a = true;

if(!a)
{
  Console.WriteLine("a is false.");
} 
else 
{
  Console.WriteLine("a is true.");
}
// Output: a is ???
```

- true
- false