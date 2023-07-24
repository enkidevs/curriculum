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

Here's how you can define an array:

```csharp
int numbers[5];
```

In this example, `numbers` is an array that can hold 5 integers.

**Note:** Arrays in **C#** are fixed in size. If you need a collection that isn't fixed, you can use `Vectors` (more on this in the next insight).

To assign values to the array:
```csharp
int numbers[5] = {1, 2, 3, 4, 5};
```

And to access an element in the array, use the index of that element (keep in mind that indexing starts at 0):
```csharp
int numbers[5] = {1, 2, 3, 4, 5};
printf("%d\n", numbers[0]);

// Output: 1
```

---

## Practice

Fill in the code to create an integer array called `nums` that holds numbers from 1 through 5:

```csharp
??? ???[5] = {1, 2, 3, 4, 5};
```


- int
- nums
- integers
- numbers

---

## Revision

Fill in the code to output the number 5 from the `numbers` array using its index:
```csharp
int numbers[5] = {1, 2, 3, 4, 5};
printf("%d\n", numbers[???]);

// Output: 5
```

- 4
- 5
- 3
- 0