---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
---

# Short Circuiting

---

## Content

What if we don't want our logical operators to short circuit?

Luckily, C# includes the `&` and `|` operators which are non-short-circuiting versions of the `&&` and `||` operators respectively:
```csharp
if (true | SomeMethod())
{
    // SomeMethod() will be called even if the first condition is true.
}
if (false & SomeMethod())
{
    // SomeMethod() will be called even if the first condition is false.
}
```