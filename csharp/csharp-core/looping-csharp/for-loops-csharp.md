---
author: Stefan-Stojanovic
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

# for loops

---
## Content

A `for` loop is used when we know beforehand how many times we want to execute a block of code.
It is defined with three parameters: 
1. The initialization
2. The condition
3. The increment.

Here's an example of a `for` loop:

Example:
```csharp
for(int i = 0; i < 5; i++)
{
  Console.WriteLine(i);
}
```

This loop will print the numbers from `0` to `4`. The variable `i` is initialized with `0` and incremented by 1 in each iteration. The loop will continue until `i` is no longer less than 5.

---
## Practice

Finish the following code snippet to make the loop print numbers from 0 to 9.

```csharp
???(int i = 0; i ???; i++)
{
  Console.WriteLine(i);
}
```

- for
- `< 10`
- `<= 10`
- `> 10`
- `>= 10`
- while

---
## Revision

What is the output of the following code?

```csharp
for(int i = 1; i <= 3; i++)
{
  Console.WriteLine(i);
}
// Output: ???
```

- 1 2 3
- 0 1 2 3
- 0 1 2
- 2 3