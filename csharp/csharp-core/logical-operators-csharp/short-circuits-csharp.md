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

If the first condition is sufficient to determine the overall result, the second condition won't be evaluated. 

For instance:

```csharp
if (true || SomeMethod())
{
    // SomeMethod() won't be called.
}
if (false && SomeMethod())
{
    // SomeMethod() won't be called.
}
```

Since the entire condition can be determined by the first operand, C# doesn't need to evaluate `SomeMethod()`.

