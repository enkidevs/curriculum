---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Sorting and Filtering


---

## Content

**Sorting your data** makes understanding it much easier.

If we had a list of products with their prices, and we want to quickly see our five most expensive products, we could simply sort the whole sheet by the price column, and choose descending order.

Just go to `Data > Sort sheet by ...` making sure that you're on the column you want sort by and then `Z - A` will make it decsending.

![Sorting Data](https://img.enkipro.com/cd5ef341702e19c63003707305d4cd48.png)

Another great way to spot trends or to explore your data is to use **filters**.

Filtering is the process of choosing a smaller part of your data and using that subset for viewing or analysis. 

> 💡 Filtering is generally temporary – the original data is kept, but only part of it is used for calculations.

You can click on this icon to turn every column into a filter. From here you can then manipulate each column to display the desired information. 

![Filtering Data](https://img.enkipro.com/e16cc135135d811293f36edffcf94ed7.png)

> 💡 Be careful when using `SUM` with filtered data as this function adds both the visible and hidden cells.

You should use `SUBTOTAL` when using aggregations with filtered data. 

This formula will only calculate results for the cells that are displayed.

=SUBTOTAL(`function_code`, range1, [range2, ...])

The `function codes` which need to be inserted are:

1 - AVERAGE
2 - COUNT
3 - COUNTA
4 - MAX
5 - MIN
6 - PRODUCT
7 - STDEV
8 - STDEVP
9 - SUM
10 - VAR
11 - VARP


---

## Practice

What function can be used to calculate the sum of filtered data?

???

- SUBTOTAL
- SUMTOTAL
- SUM
- SUMIF


---

## Revision

What function can be used to calculate the average of filtered data?

???

- SUBTOTAL
- AVERAGETOTAL
- AVERAGE
- AVERAGEIF
