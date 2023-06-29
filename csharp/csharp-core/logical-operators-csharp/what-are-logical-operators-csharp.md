---
author: emmab
tags:
  - introduction
type: normal
category: must-know
---

# Logical Operators

---

## Content

Logical operators in **C#** are used to perform logical operations on the operands.

They mainly involve boolean values and they return a boolean value as a result.

The logical operators provided by **C#** include:

| Operator | Name |
| :------: | :--: |
|    &&    | AND  |
|   \|\|   |  OR  |
|    ^     | XOR  |
|    !     | NOT  |

Note: **C#** also supports the `&` and `|` operators which perform bitwise `AND` and `OR` operations. They can also be used as logical operators, but unlike `&&` and `||`, they do not have "short-circuit"[1] behavior.

---

## Footnotes

[1: Short Circuit]
Short-circuit refers to the process where the evaluation of boolean conditions stops as soon as the result is determined.

In other words, not all expressions are evaluated in a boolean operation once the outcome can be known from the evaluation of earlier ones.

For example, in logical `AND` operations (`&&`), if the first operand is false, then it doesn't matter what the second operand is, the entire expression will be false.

As in short-circuit evaluation, the second operand won't even be evaluated, because the outcome can be determined solely by the first operand.

```csharp
int a = 0;
int b = 10;

// In the following line, the second condition will not be evaluated
// because the first condition is already false, so the entire expression is false.
if(false && (b > a))
{
  Console.WriteLine("Both conditions are true.");
}
else 
{
  Console.WriteLine("At least one condition is false.");
}
```
