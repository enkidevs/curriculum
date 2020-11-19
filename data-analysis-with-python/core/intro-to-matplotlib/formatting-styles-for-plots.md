---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Formatting styles for plots

---
## Content

Previously we have used this code to generate a PNG plot[1].

Now we will edit the styling of those plot points.

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


Another way of dotting lines is by writing: `linestyle='dotted'`

All five line styles and their alternatives are:

| Linestyle(word) | Linestyle(symbol) | Description             |
|-----------------|-------------------|-------------------------|
| dashed          | '--'              | Dashed lines            |
| dashdot         | '-.'              | Dashed and dotted lines |
| none            | ''                | Empty                   |
| solid           | '-'               | Solid                   |

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