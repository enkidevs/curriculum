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

# && and || Operator

---

## Content

The `&&` operator returns true if both operands are true. Otherwise, it returns false:

```csharp
bool a = true;
bool b = true;

if(a && b)
{
  Console.WriteLine("Both a and b are true.");
}
// Output: ""Both a and b are true.."
```

## OR
The `||` operator returns true if at least one of the operands is true. If both are false, it returns false:

```csharp
bool a = true;
bool b = false;

if(a || b)
{
  Console.WriteLine("At least one of the variables is true.");
}
// Output: "At least one of the variables is true."
```

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