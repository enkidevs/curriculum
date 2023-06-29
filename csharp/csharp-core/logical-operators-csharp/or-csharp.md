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

# OR (||) operator

---

## Content

The `||` operator, also known as the logical `OR` operator, is used to perform a logical disjunction on two boolean expressions.

If at least one of the expressions evaluates to true, the whole expression evaluates to true. Only if both expressions evaluate to false, does the whole expression evaluate to false.

Here's an examples:
```csharp
bool a = true;
bool b = false;

if(a || b)
{
  Console.WriteLine("At least one of the variables is true.");
}
else
{
  Console.WriteLine("Both variables are false.");
}
// Output: "At least one of the variables is true."
```


---

## Practice

Fill in the code with the appropriate OR operator to match the output.

```csharp
bool a = ???;
bool b = false;

if(a ??? b)
{
  Console.WriteLine("At least one of the variables is true.");
}
else
{
  Console.WriteLine("Both variables are false.");
}
// Output: At least one of the variables is true.
```

- `true`
- `||`
- `false`
- `!`

---

## Revision

What is the output of the following code?

```csharp
bool a = false;
bool b = false;

if(a || b)
{
  Console.WriteLine("At least one of the variables is true.");
}
else
{
  Console.WriteLine("Both variables are false.");
}
// Output: ???
```

- Both variables are false.
- Either a, b or both variables are true.