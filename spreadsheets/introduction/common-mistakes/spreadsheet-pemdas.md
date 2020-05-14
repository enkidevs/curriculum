---
author: Stefan-Stojanovic

aspects:
  - introduction
  - workout

type: normal

category: how to

---

# Order of operations

---
## Content

In spreadsheets, it is possible to miscalculate cells and output the wrong data.

To avoid doing this, you should learn how spreadsheets logic works.

The spreadsheet calculations follow the `PEMDAS` or `BOMDAS` order of operations.

`PEMDAS` and `BOMDAS` mean the same thing, former is American and later is British.

`PEMDAS` stands for:
Parentheses, Exponent, Multiplication, Division, Addition, and Subtraction.

`BOMDAS` stands for:
Brackets, Orders, Multiplication, Division, Addition, and Subtraction.

In Spreadsheets, when you calculate any cell or multiple cells, the calculations are done with the above order of operation.

First, all the parentheses are resolved, next, all exponents, then all the multiplications and divisions ( from left to right, whichever comes first), and last Addition and Subtraction ( also, left to right).

So, an expression like this one:
```
3 + 5 ^ (5 - 3) * 4 / 2 - 1
```
Would be calculated like so:

```
1st step Parentheses
3 + 5 ^ 2 * 4 / 2
2nd step Exponents
3 + 25 * 4 / 2
3rd step Multiplication and Division
3 + 100 / 2
4th step same since we still have one division
3 + 50
5th step addition and subtraction
53
```

Example in spreadsheets:

![image-of-pemdas](https://img.enkipro.com/fb166c60c96bd4496398e55368fec0cc.png)

To remember it easier you can assign letters in the PEMDAS acronym to spell out a sentence. One widely used is "Please Excuse My Dear Aunt Sally". 

---
## Practice

Which order of operations does spreadsheet use?

???

* PEMDAS
* SADMEP
* MDASPE
* EPSDAM
