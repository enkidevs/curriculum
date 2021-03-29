---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how-to

---

# Group Rule Continued

---
## Content

Using the same table as in the previous insight[1]

Our table only has the year portion of a date, so we will set the minimum value to `2003` and the interval to `2`.

This will show dates from 2003 onward and display them in intervals of 2. 2003-2004, 2005-2006, etc.

> 💡 An interval of 1 would give us 2003-2003, 2004-2004, etc. This interval would be better if we had months and days as well.

Now that we have a date rule, our table looks like this:

![min-2003](https://img.enkipro.com/7917b8de75c47aac16826e4d08bc0a75.png)

The Group rule doesn't remove data that is less than the minimum value. Anything before our minimum value is grouped and shown as `<2003`.

If we had a min of `2003` and max of `2006`, our table would look like this:

![2003-2006](https://img.enkipro.com/938c2deed83b650d0c38865259e90e74.png)

---
## Footnotes

[1:Previous Pivot Table]
![sum-per-date](https://img.enkipro.com/24a1beda6708662699c2d33f68312a66.png)