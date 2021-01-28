---
author: kapnobatai136
category: how-to
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Adding Filters


---

## Content

In this insight, we'll take a close look at how we can add filters using more than one check.

In the previous lessons, we used as an example a filter step which ensures that we react only to spreadsheet row changes where their `Has Access?` column is `Yes`.

To extend this example, say that we want to react only to *the first 3 rows of the spreadsheet*, or to rows where the last name is `Wick` (you've seen what he can do when he is upset).

For this, our logic would look something like this:

1. `Has Access?` = `Yes` **and** `Row Number` < 4

**or**

2. `Has Access?` = `Yes` **and** `Last Name` = `Wick`

Considering that our data looks like this:

![google-sheets-data](https://img.enkipro.com/9633e64a27dfc89a5f0e4f588d51b81d.png)

And if we set our filter as discussed above:

![filter-fields](https://img.enkipro.com/dc9727ca46844f5f914355b92455b67b.png)

Notice how only `AND` can be linked (e.g. `check 1 AND check 2 AND ...`), with this sequence not being possible `check 1 OR (check 2 AND check 3)`.

Your zap is now ready, and you will only be notified if the data passes the checks.


---

## Practice

The limit of checks a filter can have in Zapier is ???.

- none
- 2
- 4
- 6


---

## Revision

Is this type of check possible with `Filter by Zapier`?

```plain-text
check 1
OR
(check 1 AND check 2)
```

???

- No.
- Yes.
