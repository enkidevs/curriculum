---
author: priyankinirmal

levels:

  - basic

type: normal

category: feature

tags:

  - css

  - border-radius

  - rounded-corners

  - borders


links:

  - '[www.css3.info](http://www.css3.info/preview/rounded-border/){website}'


---

# Use `border-radius` to style rounded corners of an element

---
## Content

Use two length or percentage values to define the horizontal and vertical radii of a quarter ellipse separately.
```css
div {
  border: 3px solid red;
  border-radius: 15px 10px;
}
```
Using one value will determine the horizontal and vertical radii equally.

To style the `border-radius` for each individual border, use `border-top-right-radius`, `border-top-left-radius` etc.

From left to right, the values of `border-radius` are: `10% 30%` , `20% 50%` and `50% 20%`.

![HtmlToSvgmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20620%20210%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h612v200H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22158%22%20y=%22158%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2216%22%20font-weight=%22400%22%20fill=%22#000%22%3E%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22312%22%20y=%22158%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2216%22%20font-weight=%22400%22%20fill=%22#000%22%3E%3C/text%3E%3Cpath%20d=%22M53%2033h90c24.853%200%2045%2020.147%2045%2045v90c0%208.284-6.716%2015-15%2015H83c-24.853%200-45-20.147-45-45V48c0-8.284%206.716-15%2015-15M272%2033h45c41.42%200%2075%2033.58%2075%2075v45c0%2016.57-13.43%2030-30%2030h-45c-41.42%200-75-33.58-75-75V63c0-16.57%2013.43-30%2030-30M516%2033h45c16.57%200%2030%2013.43%2030%2030v45c0%2041.42-33.58%2075-75%2075h-45c-16.57%200-30-13.43-30-30v-45c0-41.42%2033.58-75%2075-75%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3C/g%3E%3C/svg%3E)

The first value targets `top-left` and `bottom-right` corners, while the remaining corners are targeted by the second value.

To obtain a circle, use `border-radius: 50%`.

---
## Revision

Consider the snippet:
```css
#element {
   border-radius: 22px 15px;
}
```
The first number in the two-values syntax of the `border-radius` will shape

???

* top-left and bottom-right corners
* top-left and bottom-left corners
* top-right and bottom-left corners
* top-right and bottom-right corners

