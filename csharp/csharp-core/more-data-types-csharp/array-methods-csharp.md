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

# Array Methods

---

## Content

Arrays come with several built-in methods, here are some of them:

- `Length`: gets the total number of elements in the array.
- `GetValue()`: gets the value at the specified position in the array.
- `SetValue()`: sets a value to the element at the specified position in the array.
- `Sort()`: sorts the elements in the entire array.
- `Reverse()`: reverses the sequence of the elements in the array.

```csharp
int[] numbers = { 2, 3, 1 };

Console.WriteLine("Length: " + numbers.Length);
// Output: Length: 3

Console.WriteLine("First Element: " + numbers.GetValue(0));
// Output: First Element: 2

Array.Sort(numbers);
Console.WriteLine("Sorted: " + string.Join(", ", numbers));
// Output: Sorted: 1, 2, 3

Array.Reverse(numbers);
Console.WriteLine("Reversed: " + string.Join(", ", numbers));
// Output: Reversed: 3, 2, 1
```



---

## Practice

Given the `nums` array:
```csharp
int[] nums = { 2, 3, 1 };
```

Find out what its first value is and check its length:
```csharp
Console.WriteLine("Length: " + ???.???);
// Output: Length: 3

Console.WriteLine("First Element: " + nums???);
// Output: First Element: 2
```

- nums
- Length
- `.GetValue(0)`
- `[1]`
- size


---

## Revision

Match the method with the description:

??? gets the total number of elements in the array.
??? sets a value to the element at the specified position in the array.
??? gets the value at the specified position in the array.
??? reverses the sequence of the elements in the array.
??? sorts the elements in the entire array.

- Length
- SetValue()
- GetValue()
- Reverse()
- Sort()