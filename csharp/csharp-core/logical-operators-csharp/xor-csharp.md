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

# XOR (^) Operator

---

## Content

The `^` operator, also known as the logical `XOR` operator, is used for boolean operations.

`XOR` stands for "exclusive or", meaning it returns true if exactly one (and only one) of the conditions is true.

Here is an example:
```php
bool a = true;
bool b = false;

if(a ^ b)
{
  Console.WriteLine("Exactly one of a or b is true.");
}
else
{
  Console.WriteLine("Either both are false or both are true.");
}
// Output: "Exactly one of a or b is true."
```

In the example above, since exactly one of `a` or `b` is true, the `if` block executes.

---

## Practice

What is the output of the following code?

```csharp
bool a = true;
bool b = true;

if(a ^ b)
{
  Console.WriteLine("Exactly one of a or b is true.");
}
else
{
  Console.WriteLine("Either both are false or both are true.");
}
// Output: ???
```

- Either both are false or both are true
- Exactly one of a or b is true

---

## Revision

What is the output of the following code?

```csharp
bool a = false;
bool b = false;

if(a ^ b)
{
  Console.WriteLine("Exactly one of a or b is true.");
}
else
{
  Console.WriteLine("Either both are false or both are true.");
}
// Output: ???
```

- Either both are false or both are true
- Exactly one of a or b is true