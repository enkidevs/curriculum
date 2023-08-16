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

# Comparison Operators

---

## Content

**C#** includes all the standard comparison operators you would expect:

| Operator |             Name            |
|:--------:|:---------------------------:|
| ==       | is equal to                 |
| !=       | is not equal to             |
| <        | is less than                |
| <=       | is less than or equal to    |
| >        | is greater than             |
| >=       | is greater than or equal to |


---

## Practice

Finish the code to output "num is greater than or equal to 3" if the condition evaluates to `true`.

```csharp
int num = 3;
if (??? ??? 3) { // true
  Console.WriteLine("num is greater than or equal to " + num);
}
// num is greater than or equal to 3
```

- num
- >=
- <=
- 1


---

## Revision

Finish the code to to make the comment true:

```csharp
int ??? = 3;
if (num ??? 2) {
  Console.WriteLine("num doesn't equal " + num);
}
// Output: num doesn't equal 2

```

- num
- !=
- ==
- number