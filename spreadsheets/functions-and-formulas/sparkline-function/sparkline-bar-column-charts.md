---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how-to

---

# Sparkline Bar & Column Charts 

---
## Content

The bar and column charts are used to display data with rectangular bars proportional to the data.

The only visual difference between these 2 is that bar charts are horizontal whereas column charts are vertical.

The sub-options are added like so:
```plain-text
=SPARKLINE(data, {
  "charttype", "bar"; 
  "option1","value1";
  "option2","value2";...
  })
```
> For the column chart, just change the chart type from `bar` to `column`

### Column Chart & Options

- `color` sets the color of the chart.
- `lowcolor` sets the color of the lowest value in the chart.
- `highcolor` sets the color of the highest value in the chart.
- `firstcolor` sets the color of the first value in the chart.
- `lastcolor` sets the color of the last value in the chart.
- `negcolor` sets the color of all negative columns.
- `axis` decides if an axis needs to be drawn. Possible values are `true` and `false`.
- `axiscolor` sets the color of the axis. Only possible if axis is drawn.
- `ymin` and `ymax` set the custom minimum and maximum value that should be used for scaling the height of the columns.

![column-charts](https://img.enkipro.com/3363b4c31c7c9a02390ffbd81391e420.png)

### Bar Chart & Options

- `max` sets the maximum value along the horizontal axis.
- `color1` and `color2` set the first and second colors used in bar charts.

![bar-charts](https://img.enkipro.com/235e44e548f3d5b276dbe4f7195f1dbf.png)

> `bar` is the only `SPARKLINE` chart that has 2 default colors; "light blue" and "orange".

### Applies To Both Chart Types

> 💡 Just like the `Win-loss` and `Line` charts you can modify the color by changing the font color of the cell. 

- `empty` is used to tell the function how to treat empty cells. Possible values are `ignore` and `zero`.
- `nan` is used to tell the function how to treat non-numerical values. Possible values are `ignore` and `convert`.
- `rtl` determines if the chart is rendered left-to-right or right-to-left. Possible values are `true` and `false`