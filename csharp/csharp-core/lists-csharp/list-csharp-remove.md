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
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 1

numbers.Remove(1);
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 0

numbers.Add(1);
numbers.Add(3)
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 2

numbers.Clear()
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 0
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