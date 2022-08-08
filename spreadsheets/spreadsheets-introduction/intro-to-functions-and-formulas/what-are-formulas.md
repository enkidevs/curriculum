---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# What are Formulas?

 
---

## Content

Formulas are the building blocks of spreadsheets. They are used to **transform the values of a cell**.

Suppose you have the following spreadsheet:

![data](https://img.enkipro.com/bd39918bdc033118ec692ce1f0d85edb.png)

In this spreadsheet, you've noted your weekly spending. You'd now like to find out the total amount spent.

Instead of manually adding all the numbers, you can create a formula that does this for you. To differentiate formulas from other data, they always start with an equals (`=`) sign. 

In this case, you'd enter the below into `B6`:

```plain-text
= B2 + B3 + B4 + B5
```

Now, every time you update the data in one of the cells found in the formula (`B2`, `B3`, `B4`, `B5`), the total sum will be re-calculated for the new values.

![simple-formula](https://img.enkipro.com/f6ce7842765f9a189f6f75e187ab1ce6.png)


---

## Practice

Consider the following spreadsheet:

| &#160; | A    | B        |
|---|------|----------|
| 1 | Week | Spending |
| 2 | 1    | 23       |
| 3 | 2    | 32       |
| 4 | 3    | 28       |
| 5 | 4    | 42       |

What will the formula `= B2 + B4` output?

```plain-text
???
```

- 51
- 83
- 125
- 23
