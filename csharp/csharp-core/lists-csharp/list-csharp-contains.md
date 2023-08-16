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

# List Methods

---

## Content

We can check if a list contains a certain element with `.Contains()`:

```csharp
List<int> numbers = new List<int>();
numbers.Add(6);

Console.WriteLine(numbers.Contains(6))
// Output: True


Console.WriteLine(numbers.Contains(12))
// Output: False
```



---

## Practice

Given the `nums` array:

```csharp
List<int> nums = new List<int>();
```

Fill in the code to add 13 to it:
```csharp
???.???(13);
```

- nums
- Add
- push
- numbers

---

## Revision

Given the `nums` array:

```csharp
List<int> nums = new List<int>();
```

Fill in the code to add 13 to it then check if it has that value:
```csharp
???.???(13);
Console.WriteLine("Has 13: " + numbers.(13));
```

- nums
- Add
- Contains
- has