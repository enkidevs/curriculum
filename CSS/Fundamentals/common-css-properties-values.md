# Common CSS Properties Values
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: pattern

---
## Content

We have talked about *selectors* and *specificity* using almost the same CSS properties in every insight: `color`, `background-color`,`font-size` or `font-weight`. Now of course there are a lot of other existing properties, and, more importantly, there are many ways to declare them.

### Colors
Each of these CSS declarations specifies the same thing: that a every `div` tag should have a white background by default.
```
.div-hex {
/* hexadecimal value */
background-color: #ffffff;
}
.div-rgb {
/* rgb */
background-color: rgb(255,255,255);
}
.div-color{
/* color name */
background-color: white;
```
All the `divs` above will be white, as the values are equivalent: `ff` is the *hexadecimal* representation of `255` and `white` is self-explanatory.

Keeping this in mind, it should be easier to understand how *hex* values work: there are **6** characters slots to fill (which can take values from `0` to `f`). Each **two** characters represent the intensity of `red`, `green`, `blue`, in this order.

Here is the representation of some basic colors:
```javascript
/* black */
#000000   rgb(0,0,0)   black

/* red */
#ff0000   rgb(255,0,0)   red

/* green */
#00ff00   rgb(0,255,0)   green

/* blue */
#0000ff   rgb(0,0,255)   blue
```

You can obtain all kinds of colors and shades from mixing the values together, and there are a lot of tools online to help you with that.

### Lengths

Like colors, there are different types of values for *lengths*. The most popular value is the *pixel*, `px`.

Each pixel is a unit of absolute length. That means they are the same size on all devices: a `16px` font-size should have the same apparent dimension on a printed sheet of paper, on a computer screen or on a mobile screen.
```css
p {
  font-size: 16px;
}
```
---
## Revision

If *purple* is the combination of *red* and *blue*, which of the following is not representing purple?

???
*#00ffff
*#ff00ff
*rgb(255,0,255)
*purple
