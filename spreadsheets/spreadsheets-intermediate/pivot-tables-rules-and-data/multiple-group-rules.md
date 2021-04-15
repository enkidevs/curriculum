---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# Multiple Group Rules

---
## Content

With pivot tables, you can have as many group rules as you have columns.

If you have 10 columns, you can have 10 group rules.

> 💡 The maximum can be less than the columns you have, this is dependant on the data in those columns. You cannot group by names if all names are different, or group by dates when you have only 1 date, etc.

In the previous insight, we have grouped by dates. Now, we will add another row of data which includes `Sales` and add a group rule that splits them into three parts:
- `less than 2000$`
- `more than 5000$`
- `everything in between those 2`

![2000-5000](https://img.enkipro.com/202fb00ba256637506a72cfcbf1e21ad.png)

This way we can see how much money was earned from products that cost less than 2000, between 2000 and 5000 and more than 5000.

> 💡 To check which rows/columns have groups, open the `Pivot table editor` and anyone with a group will have "Grouped" at the start of the name. 

![grouped-cards](https://img.enkipro.com/69310ae8ddb71504fc9a71f8ed22e17d.png) 