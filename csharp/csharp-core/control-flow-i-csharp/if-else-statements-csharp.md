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

# `if...else` 

---

## Content

The `if` statement can be extended to include an `else` clause, which will be executed if the condition is not met:

```csharp
int num = -6;
if (num >= 0) {
  Console.WriteLine("Positive or Zero");
} else {
  Console.WriteLine("Negative");
}
// Negative
```


---

## Practice

What does the following code snippet print?

```csharp
int num = 3;
if (num == 0) {
  Console.WriteLine("num is zero");
} else {
  Console.WriteLine("num is not zero");
}
```

???

- num is not zero
- num is zero
- 3
- 0

---

## Revision

What does the following code snippet print?

```csharp
int num = 3;
if (num < 0) {
  Console.WriteLine("num is negative");
} else {
  Console.WriteLine("num is positive");
}
```
???

- num is positive
- num is negative
- 3
- 0
