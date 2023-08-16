---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# Assignment Operators in C#

---

## Content


In the programming world, we sometimes want to give data types the ability to have no value, hiding behind the cloak of `null`.

In C#, stalwarts like integers, floats, and booleans always stand tall with a value. They can't just fade into `null`. But there are moments when you wish they could represent the "unknown."

The solution in C#? Just add a subtle `?` to types such as int, granting them this elusive power:

```csharp
int? x = 5;
x = null;
```
