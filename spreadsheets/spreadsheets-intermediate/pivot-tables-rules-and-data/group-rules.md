---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Group Rule in Pivot Tables

 
---

## Content

Pivot tables have a feature called "Group rule". This feature lets you narrow down your rows/columns of data for easier analysis. You can add a `minimum` and/or a `maximum` value and an `interval`.

Let's say we have a pivot table that shows the sum of sales per year and category:

![sum-per-date](https://img.enkipro.com/24a1beda6708662699c2d33f68312a66.png)

When you have dates in a pivot table, you can group them by year, month, day, and more. 

How you group dates depends on the source data. If the dates are only years, you can only group by years, if you have only days, by days, etc.

If we right-click on any date within the pivot table, not the `Pivot editor`, we can select a "Create pivot group rule" option.

![create-rule](https://img.enkipro.com/025eb3d684ce58cc9a3dd2f3a60f973d.png)

This will open a pop-up window called `Group rule`.

![group-rules](https://img.enkipro.com/27410ba0b4718716ce202df5d4d45276.png)

The `Group rule` has 3 parts.

- Minimum value
- Maximum value
- Interval

You must have either the minimum, the maximum, or both, as well as the interval. The interval is required whether you choose one or both of the other two options.

We will dive into some examples in the next insight.


---

## Practice

What are group rules used for in pivot tables?

???

- To group data for easier analysis.
- To remove data from the pivot table
- To edit source data
