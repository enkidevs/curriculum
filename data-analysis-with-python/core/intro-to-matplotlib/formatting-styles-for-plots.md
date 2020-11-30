---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Formatting styles for plots

---
## Content

Previously we have used this code to generate an axis[1].

Now we will edit the styling.

There are several things we can edit:
- style( line, circle, column, ...)
- colors(green, blue, yellow, ...)
- size(width, height,...)
- and more

All of these styling edits are done through different attributes.

> Plus, there are several ways of editing styling.

For instance, here is the same code as in the previous chart, but with dotted lines
```python
 plot([1,2,3], [14,24,44], linestyle=':')
```

This code will give this chart:

![linestyle-dotted-chart](https://img.enkipro.com/7f978672a37072fdf8cef7aeb68a57c9.png)

> Linestyled don't have to be added like we did above. You can also add them through the `fmt` attribute.

This chart doesn't have any markers on it, so will add them now through `fmt`.

`fmt` is a string and you can use it to format the `marker`, the `line` and the `color`.

The syntax for `fmt` is:
```python
fmt = '[marker][line][color]'
```

> We will show you an example after we go through each section.

The markers are disabled by default but you can add different markers to represent points on the lines.

Some of these are:
| Character | Description    |
|-----------|----------------|
| '.'       | point marker   |
| ','       | pixel marker   |
| '*'       | star marker    |
| 'D'       | diamond marker |


`line` represents the line style and has these options:

| Linestyle(word) | Linestyle(symbol) | Description             |
|-----------------|-------------------|-------------------------|
| dashed          | '--'              | Dashed lines            |
| dashdot         | '-.'              | Dashed and dotted lines |
| none            | ''                | Empty                   |
| solid           | '-'               | Solid                   |

The last `color` option is used to color the line. Some of these options are:

| character | description |
|-----------|-------------|
| 'b'       | blue        |
| 'g'       | green       |
| 'r'       | red         |
| 'c'       | cyan        |
| 'm'       | magenta     |

For a full list of markers, colors and other notes on `fmt` check out the link in the "Learn more" section.

`fmt` is added after the `x,y` values in the form of a string:

> If you are **only** adding the color without a marker or a style, you can represent the colors with its word or hex code value:
- 'blue' or '#0000ff'
- 'yellow' or '#ffff00'
- etc

Here is the same example from above, however, this time we will add a diamond marker, make the line style dashed and color it in magenta.

```python
 plot([1,2,3], [14,24,44], 'D--m')
```

The output of the above function is:

![plot-with-magenda-diamond-markers](https://img.enkipro.com/361a557219389f2c9b49fbde6aead348.png)

---
## Practice

Which of these is not a valid styling option for `pyplot`s line plot.

???

- dotdash
- dashed
- dashdot
- solid
- none

---
## Revision

Match the styling word to the styling symbol for `linestyle`

dashdot = ???
dashed = ???
none = ???
solid = ???

- '-.'
- '--'
- ''
- '-'


---
## Footnotes

[1:previous example]
```python
plt.plot([1,2,3],[14,24,44])
plt.ylabel("Vertical Axis")
plt.xlabel("Horisontal Axis")
```

![previous-example](https://img.enkipro.com/3d815ac5e9907a29235dd7315b92d9a9.png)