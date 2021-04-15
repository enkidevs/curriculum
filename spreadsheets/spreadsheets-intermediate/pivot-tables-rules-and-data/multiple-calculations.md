---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# Multiple Calculations

---
## Content

The `Rows` and `Columns` fields in a pivot table cannot have multiple data. 

What we mean by "cannot have multiple data", if you have `sales` in the `Rows` field, you cannot have it in the `Columns` field and vice versa.

However, when it comes to calculations, which is done in the `Values` field, you can use the same field multiple times.

Let's say we have this pivot table:

![pivot-example](https://img.enkipro.com/f052ac1d6acf799bb9968e03e59d7c3e.png)

It shows what beverage was sold, for how much, as well as the total money per beverage and the grand total.

We calculate the sum through the `Values` field.

![vaues-field](https://img.enkipro.com/94758d4d7aa0282706524098c9e94285.png)

Let's add an average, min, and max for `Sales`.

Now our table looks like this:

![pivot-with-extra-steps](https://img.enkipro.com/ac105e7d7306bbdbb0feb3f47b6d2684.png)

>💡 The values in `Sales` are separated into groups of three and four because the `Sales` are paired with `Quarters` which are filtered out.

The `total sales` can be removed by ticking the `Show totals` checkboxes in the `Pivot Editor`.

![remove-show-totals](https://img.enkipro.com/a05db513f475d7a30bc2c8fbb569695c.png)