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

We can remove the first occurance of an element using `.Remove(element)`, or remove all elements with `.Clear()`:

```csharp
List<int> numbers = new List<int>();

numbers.Add(1);
numbers.Add(3)
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 2

numbers.Remove(3);
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 1

numbers.Clear()
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 0
```



---

## Practice

Given the `nums` array:

```csharp
List<int> nums = new List<int>();
nums.Add(5); 
nums.Add(0);
```

Fill in the code to remove the element `0` from it:
```csharp
nums.???(???);
```

- `Remove`
- `0`
- `1`
- `clear`

---

## Revision
Given the `nums` array:

```csharp
List<int> nums = new List<int>();
nums.Add(5); 
nums.Add(0);
```

Fill in the code to remove the element `0` from it:
```csharp
nums.???(???);
```

- `Remove`
- `0`
- `1`
- `clear`