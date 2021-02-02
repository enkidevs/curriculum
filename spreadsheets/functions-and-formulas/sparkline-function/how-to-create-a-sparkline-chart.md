---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to Create a Sparkline Chart?


---

## Content

As previously mentioned, these charts are created using the `=SPARKLINE()` function.

The syntax is:

```plain-text
=SPARKLINE(data,options)
```

The `data` is the array or range of cells containing the data for the chart.

The `options` are optional. You can select an array or range of settings to customize the chart.

The type of chart is selected in the `options` field.

The possible options for selecting a chart are:

- `=SPARKLINE(data, {"charttype", "line"})`
- `=SPARKLINE(data, {"charttype", "column"})`
- `=SPARKLINE(data, {"charttype", "bar"})`
- `=SPARKLINE(data, {"charttype", "winloss"})`

As you can see in the list above, the `options` part should be "two field-wide".

> 💡 Here's what we mean by "2 field-wide". The first field ( `"chartype"`) would be the `option` part and `"bar"` would be the `value` for that option making that "two field-wide".

All options are selected as field-value pairs.

Also, each chart has its own sub-options that you can use to further modify your chart.

We will go into the sub-options for each chart in the next few insights.

> Sparkline charts can only be created with a single row or column of data. If you want to use more than 1 column/row you have to use regular charts.


---

## Practice

Which of the following chart types cannot be created using the `=SPARKLINE()` function?

???

- pie
- line
- column
- winloss
- bar


---

## Revision

Sparkline charts can ???.

- only be created using a single row or column of data
- be created with multiple rows and columns of data
