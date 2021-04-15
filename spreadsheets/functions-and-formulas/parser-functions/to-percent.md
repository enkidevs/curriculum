---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[TO_PERCENT](https://support.google.com/docs/answer/3094284){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# TO_PERCENT


---

## Content

The `=TO_PERCENT` function is used to convert a number to a percentage.

The syntax is:

```plain-text
=TO_PERCENT(value)
```

The value of `0` corresponds to `0%` and the value of `1` corresponds to `100%`.

> 💡 You can use negative numbers to get negative percentages.

```plain-text
=TO_PERCENT(-1)
-100%
```

On the same note, values higher than `1` will result in percentages higher than `100%`:

```plain-text
=TO_PERCENT(13)
1300%
```

Google Sheets doesn't automatically convert values like `0.3` to `30%`. 

You would either need to use this function (`=TO_PERCENT(0.30)`) or use the `Format as percent` menu button. 

You can perform calculations with other functions and enclose them all in `=TO_PERCENT()` to get the result as a percentage.

```plain-text
=TO_PERCENT(
  SUM(13,12,11,11,11)/3000
)
2%
```

In this example, we calculate the `SUM`, divide by `3000`, and lastly convert the result to a percentage.

Here are a few more examples:

![percentage-examples](https://img.enkipro.com/54b3edceb7c560c5390324103ae353b3.png)


---

## Practice

Fill in the gaps to transform a number into `87%`.

```plain-text
=??????
87%
```

- TO_PERCENT
- (0.87)
- (87)
- TOPERCENT


---

## Revision

Which of these cells converts a number to 54%?

| Cell | Function           |
|------|--------------------|
|  A1  | =TO_PERCENT(54)    |
|  A2  | =TO_PERCENT(0.54)  |
|  A3  | =TO_PERCENT(5.4)   |
|  A4  | =TO_PERCENT(0.054) |

```plain-text
A???
```

- 2
- 1
- 4
- 3