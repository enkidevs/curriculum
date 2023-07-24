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

# AND (&&) Operator

---

## Content

The `&&` operator, also known as the logical `AND` operator, is used to perform a logical conjunction on two boolean expressions.

If both expressions evaluate to true, the whole expression evaluates to true. If either or both expressions evaluate to false, the whole expression evaluates to false.

Here is an example:

```csharp
bool a = true;
bool b = false;

if(a && b)
{
  Console.WriteLine("Both a and b are true.");
}
else
{
  Console.WriteLine("At least one of a or b is false.");
}
// Output: "At least one of a or b is false."
```

In the example above, even though `a` is true, the entire `if` statement evaluates to `false` because `b` is `false`.


---

## Practice


```csharp
bool a = true;
bool b = true;

if(a && b)
{
  Console.WriteLine("Both variables are true.");
}
else
{
  Console.WriteLine("At least one of the variables is false.");
}
// Output: ???
```

- Both variables are true.
- At least one of the variables is false.

---

## Revision

Fill in the code to match the output.

```csharp
bool a = ???;
bool b = true;

if(a ??? b)
{
  Console.WriteLine("Both a and b are true.");
}
else
{
  Console.WriteLine("At least one of a or b is false.");
}
// Output: Both a and b are true.
```

- true
- &&
- false
- and