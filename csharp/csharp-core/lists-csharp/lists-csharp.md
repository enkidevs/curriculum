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

---

# Lists

---

## Content

A `List` is a dynamic array, which can grow and shrink in size. It's part of the `System.Collections.Generic` namespace.

They come with built-in methods that allow you to manipulate the data easily.

Here's how you define a `List` in **C#**:
```csharp
List<int> numbers = new List<int>();
```

In the example, `numbers` is a `List` that can hold integers.

You can add elements to the `List` using the `Add()` method:
```csharp
numbers.Add(1);
numbers.Add(2);
```

And to access an element in the List, use the index of that element (keep in mind that indexing starts at 0):
```csharp
Console.WriteLine(numbers[0]); 
// Output: 1
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
