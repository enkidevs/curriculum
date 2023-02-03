---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the Javascript coding playground.
    // Generate Roman numerals from a given list of numbers.

    // Sample list to use:
    let numbers = [1, 23, 44, 59, 1111, 127, 999]

    // Type your code here:

---

# Number to Roman Numeral

---

## Content

> 👩‍💻 Your task is to: **Generate Roman numerals from a given list of numbers.**

Roman numeral symbols are:

| Roman Numeral | Integer |
|:-------------:|:-------:|
| I             | 1       |
| V             | 5       |
| X             | 10      |
| L             | 50      |
| C             | 100     |
| D             | 500     |
| M             | 1000    |

**Note: There are several rules Roman numerals follow. Take a look at this note[1].**

Sample list to use:
```javascript
let numbers = [1, 23, 44, 59, 1111, 127, 999]
```

---

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always review the comment section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Notes]

- When a value increases, up to 3 times, the symbol is added to itself.

If the value increases more, you subtract from the next highest numeral:

| Roman Numeral | Integer |
|:-------------:|:-------:|
| I             | 1       |
| II            | 2       |
| III           | 3       |
| IV            | 4       |
| V             | 5       |
| VI            | 6       |
| VII           | 7       |
| VIII          | 8       |
| IX            | 9       |
| X             | 10      |

- When a symbol of smaller value is after a symbol of a greater value, they are added together. If the smaller symbol is before it, they are subtracted.

| Number | Calculation | Result |
|:------:|:-----------:|:------:|
| IV     | V - I       | 4      |
| VI     | V + I       | 6      |

Symbols like V, L, D never repeat. That is beacuse VV is X, LL is C, DD is M.

From symbols V and X you can only subtract I, from symbols L, C and M, you can only subtract X.

Here's a sample of wrong vs correct way of writting numbers

| Sample |   ❌  |  ✅ |
|:------:|:------:|:---:|
|   41   |  XXXXI | XLI |
|   100  |   LL   |  C  |
|   59   | LVIIII | LIX |
|    7   |  IIIX  | VII |
|   111  |  CVVI  | CXI |
|   400  |  CCCC  |  CD |