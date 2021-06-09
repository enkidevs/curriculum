---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [AVERAGEIF](https://support.google.com/docs/answer/3256529?hl=en){documentation}
  - >-
    [COUNTIF](https://support.google.com/docs/answer/3093480?hl=en){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# AVERAGEIF & COUNTIF


---

## Content

When analyzing your data set, you might not want to include all the values.

This is where `AVERAGEIF` and `COUNTIF` come into play.

Both functions will keep their base functionality (i.e. average or count the values). 

The difference is that the values are included in the calculation **only if** they pass a criterion.

The syntax is:

```plain-text
=AVERAGEIF(
  criteria_range,
  criterion
)

= COUNTIF(
  criteria_range,
  criterion
)
```

> 💡 If you're using Excel, you can pass in a third **optional** argument `average_range` (or `count_range`)[1].

Both functions take the same input. Let's see what they mean!

The `criteria_range` is the range of cells you select, on which the `criterion` is applied.

The `criterion` is a pattern used to apply to the `criteria_range`. This is how you decide which cells get averaged and which don't.

The possible patterns are:

- Equals: `text`, `=text`, `"number"`, `"=number"`
- Greater than: `">number"`
- Smaller than: `"<number"`
- Greater than or equal: `>=number`
- Smaller than or equal: `<=number`
- Not equal to: `<>number` or `<>text`


---

## Practice

Which of the following formulas is used to average values based on a criterion?

???

- `=AVERAGEIF`
- `=AVERAGE`
- `=COUNTIF`
- `=COUNT`


---

## Revision

Which of the following formulas is used to count values based on a criterion?

???

- `=COUNTIF`
- `=AVERAGEIF`
- `=AVERAGE`
- `=COUNT`


---

## Footnotes

[1:Excel Extra Argument]
The `average_range` (or `count_range`) input is optional. This is the range of cells that will be averaged. 

If omitted, the `criteria_range` will be used instead.
