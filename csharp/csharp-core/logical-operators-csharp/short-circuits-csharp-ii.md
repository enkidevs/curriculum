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

What if we don't want our logical operators to short-circuit?

Luckily, C# includes the `&` and `|` operators which are non-short-circuiting versions of the `&&` and `||` operators respectively!

For instance, in both of these if statements, `SomeMethod()` will be evaluated even if the conditions can be determined by the first operand:

```csharp
if (true | SomeMethod())
{
    // SomeMethod() will be called
}
if (false & SomeMethod())
{
    // SomeMethod() will be called
}
```
