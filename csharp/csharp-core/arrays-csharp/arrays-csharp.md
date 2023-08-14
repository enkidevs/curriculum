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

# Arrays

---

## Content

An array is a collection of elements of the same type placed in contiguous memory locations that can be individually referenced by an index.

Here's how you define an array in C#:
```csharp
int[] numbers = new int[5];
```

In this example, `numbers` is an array that can hold 5 integers.

**Note:** Arrays in **C#** are fixed in size. If you need a collection that isn't fixed, you can use `Lists` (more on this in the next insight).

To assign values to the array:
```csharp
int[] numbers = new int[] {1, 2, 3, 4, 5};
```

And to access an element in the array, use the index of that element (keep in mind that indexing starts at 0):
```csharp
int[] numbers = new int[] {1, 2, 3, 4, 5};
Console.WriteLine(numbers[0]);  
// Output: 1
```

---

## Practice

Fill in the code to create an integer array called `nums` that holds numbers from 1 through 5:

```csharp
???[] ??? = new int[] {???};
```


- int
- nums
- 1, 2, 3, 4, 5
- 1-5
- integers
- numbers

---

## Revision

Fill in the code to output the number 7 from the `numbers` array using its index:
```csharp
int[] numbers = new int[] {1, 3, 5, 7, 9, 11};
Console.WriteLine(numbers[???]);  
// Output: 7
```

- 3
- 7
- 4
- 1