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

Lists in C# come with many built-in methods. Here are some of them:

- `Add()`: adds an element to the end of the list.
- `Remove()`: removes the first occurrence of a specific object from the list.
- `Count`: a property that returns the number of elements contained in the list.
- `Clear()`: removes all elements from the list.
- `Contains()`: determines whether an element is in the list.

```csharp
List<int> numbers = new List<int>();

numbers.Add(1);
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 1

numbers.Remove(1);
Console.WriteLine("Count: " + numbers.Count);
// Output: Count: 0

Console.WriteLine("Contains 1: " + numbers.Contains(1));
// Output: Contains 1: False
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