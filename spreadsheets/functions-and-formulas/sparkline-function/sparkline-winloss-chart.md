---
author: Stefan-Stojanovic
aspects:
  - workout
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Sparkline Win-Loss Charts


---

## Content

The `Win-Loss` charts are used for displaying a positive and negative outcome based on the provided data.

They are created like so:

```plain-text
=SPARKLINE(data, {"charttype", "winloss"})
```

The possible sub-options for this chart type are:

- `color` sets the color of the chart.
- `lowcolor` sets the color of the lowest value in the chart.
- `highcolor` sets the color of the highest value in the chart.
- `firstcolor` sets the color of the first value in the chart.
- `lastcolor` sets the color of the last value in the chart.
- `negcolor` sets the color of all negative columns.
- `axis` decides if an axis needs to be drawn. Possible values are `true` and `false`.
- `axiscolor` sets the color of the axis. Only possible if axis is drawn.
- `empty` is used to tell the function how to treat empty cells. Possible values are `ignore` and `zero`.
- `nan` is used to tell the function how to treat non-numerical values. Possible values are `ignore` and `convert`.
- `rtl` determines if the chart is rendered left-to-right or right-to-left. Possible values are `true` and `false`

Just like with other chart types, these options are added the same way:

```plain-text
=SPARKLINE(data, {
  "charttype", "line"; 
  "option1","value1";
  "option2","value2"...
  })
```

Here are a few examples of modified `Win-Loss` charts with 3 different number sequences:

![win-loss-chart-examples](https://img.enkipro.com/56a599bc7880ad57db5a650b6c36083e.png)

As you can see in the image above, `Win-Loss` charts without an added color are all black. It is recommended to add colors so its easier to determine the positive and negative outcomes.

> Just like the `Line` chart, you can modify the color by changing the font color of the cell.


---

## Practice

The `Win-Loss` charts are used ???

- to display a positive and negative outcome based on the selected range of data.
- for determining what percentage of a whole the data occupies similarly to a pie chart.


---

## Revision

Fill in the code below to create a single-cell `Win-Loss` chart for the range `A1:A9`. Set the color of the highest value to green and the color of the lowest value to red. 

```plain-text
=SPARKLINE(A1:A9, {
  "???", "???";
   "???", "green";
   "???","red"})
```

- charttype
- winloss
- highcolor
- lowcolor
- type
- WinLoss
- highestvalue
- lowestvalue
