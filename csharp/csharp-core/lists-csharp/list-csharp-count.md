---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know

---

# List Methods

---

## Content

We can check the size of a List with `.Count`:

```csharp
List<int> numbers = new List<int>();

Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 0

numbers.Add(1);
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 1

numbers.Add(5);
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 2
```


