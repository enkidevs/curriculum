---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Order of Operations


---

## Content

Here's one thing useful application from that Math class a long time ago!

In Sheets, all calculations follow the `PEMDAS` or `BOMDAS` order of operations.

`PEMDAS` and `BOMDAS` mean the same thing; the former is American and latter is British.

`PEMDAS` stands for:
Parentheses, Exponent, Multiplication, Division, Addition, and Subtraction.

`BOMDAS` stands for:
Brackets, Orders, Multiplication, Division, Addition, and Subtraction.

In Sheets, when you calculate any cell or multiple cells, the calculations are done in the order of operation above.

First, all the parentheses are resolved; next, all exponents; then all the multiplications and divisions (from left to right, whichever comes first); and finally, addition and subtraction (also, left to right).

So, an expression like this one:

```plain-text
3 + 5 ^ (5 - 3) * 4 / 2
```

Would be calculated like this:

```plain-text
1st step, Parentheses:
3 + 5 ^ 2 * 4 / 2
2nd step, Exponents:
3 + 25 * 4 / 2
3rd step, Multiplication and Division:
3 + 100 / 2
4th step, the same since we still have one division:
3 + 50
5th step, Addition and Subtraction:
53
```

Example in spreadsheets:

![image-of-pemdas](https://img.enkipro.com/fb166c60c96bd4496398e55368fec0cc.png)

To remember it more easily you can assign letters in the PEMDAS acronym to spell out a sentence. A common one is "Please Excuse My Dear Aunt Sally". 


---

## Practice

What operation comes after exponents, and before subtraction?

???

- Multiplication
- Parentheses
- No operations do
