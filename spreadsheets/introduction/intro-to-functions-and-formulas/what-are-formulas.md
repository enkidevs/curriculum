---
author: Stefan-Stojanovic

aspects:
  - deep
  - workout

type: normal

category: how to

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

![data](https://img.enkipro.com/a57be7c4784b165308b3874649d14fcd.png)

What will the formula `= B2 + B4` output?

???

* 51
* 83
* 125
* 23