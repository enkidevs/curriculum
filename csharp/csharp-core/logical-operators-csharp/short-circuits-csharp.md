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

In C#, the `||` (OR) and `&&` (AND) operators utilize short-circuiting. 

With short-circuiting, if the first condition is sufficient to determine the overall result, the second condition won't be evaluated. 

For instance, in a condition using ||, if the first operand is true, it doesn't evaluate the second operand:
```csharp
if (true || SomeMethod())
{
    // SomeMethod() won't be called.
}
```

Similarly, for &&, if the first operand is false, the second one is skipped:

```csharp
if (false && SomeMethod())
{
    // SomeMethod() won't be called.
}
```

