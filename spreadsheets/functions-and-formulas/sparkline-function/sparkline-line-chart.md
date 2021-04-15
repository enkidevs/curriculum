---
author: Stefan-Stojanovic
aspects:
  - workout
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Sparkline Line Chart


---

## Content

The `line` chart is the default chart and the only one you don't have to specify in the `options` part. 

It is best used to represent a change over time in the form of a single line.

```plain-text
This:
=SPARKLINE(data)

Is the same as:

=SPARKLINE(data, {"charttype", "line"})
```

This chart has the following options:

- `xmin` and `xmax` set the minimum and maximum value along the horizontal axis.
- `ymin` and `ymax` set the minimum and maximum value along the vertical axis.
- `color` sets the color of the line.
- `linewidth` sets the width of the line chart. The higher the number the thicker the line.
- `empty` is used to tell the function how to treat empty cells. Possible values are `ignore` and `zero`.
- `nan` is used to tell the function how to treat non-numerical values. Possible values are `ignore` and `convert`.
- `rtl` determines if the chart is rendered left-to-right or right-to-left. Possible values are `true` and `false`

The colors can be written with their English names or by using a hex code. 

> 💡 If you don't specify the color of the chart using the `color` sub-option you can modify it by changing the font color of the cell. 

These sub-options are added as `field-value` pairs after the `"charttype","line"` option like so:

```plain-text
=SPARKLINE(data, {
  "charttype", "line"; 
  "option1","value1";
  "option2","value2";
  "option3","value3"...
  })
```

Here are some examples of modified line charts with 3 different number sequences:

![three-line-charts](https://img.enkipro.com/7058a7791bbb00359f8de4473e9155b6.png)


---

## Revision

What is the default chart for the `=SPARKLINE()` function?

???

- Line
- Win-Loss
- Bar
- Column
