---
author: jordanfish
type: tetris
category: must-know
---

# Existential Crisis


---

## Content

Does the CSS actually exist?

Categorize the falling properties based on whether or not they are existing, legal CSS.


---

## Game Content

it doesn't exist:it's real

```false
font-face
%exp
CSS supports a property called `@font-face`, but here the @ is missing so the property is invalid.
%

outline-colour
%exp
Here we face a typo. T

he right spelling for this to be a property would be `outline-color`.
%

mid
%exp
`mid` is not a CSS property.
%

clear-all
%exp
The closest property is `clear`, but there is no property `clear-all`.
%

content-border
%exp
CSS has no property called `content-border`.
%

background-align
%exp
The CSS property is `background-position`, not `background-align`.
%

spacing
%exp
There is a property called `border-spacing`, but `spacing` doesn't mean anything in CSS.
%

list-style-color
%exp
There is no `list-style-color` property defined in CSS.
%

outline-weight
%exp
`outline-width` is a property in CSS, but `outline-weight` wouldn't work.
%

page-break-outside
%exp
This is not a CSS property, something similar to it exists though: `page-break-inside`.
%

text-transformation
%exp
This is not a CSS property.
%
```

```true
background-attachment
%exp
This property specifies how to move the background relative to the viewport.
%

background-repeat
%exp
This property specifies how (and if) the background will repeat.
%

border-collapse
%exp
This property is to be use on **table** elements. You can set the borders of the cells to be either separated or collapsed.
%

border-spacing
%exp
The border-spacing value is also used along the outside edge of the table, where the distance between the table's border and the cells in the first/last column or row is the sum of the relevant (horizontal or vertical) `border-spacing` and the relevant (top, right, bottom, or left) `padding` on the table.
%

bottom
%exp
The `bottom` property in CSS goes hand in hand with positioning. By default, elements are static positioned in which the `top` property has no effect whatsoever. But when the positioning of an element is `relative`, `absolute`, or `fixed`, the `bottom` value plays a big role.
%

caption-side
%exp
It allows you to define where **HTML**’s caption element will be positioned.
%

clip
%exp
`clip` is used on background and it allows you control how far a background image or colour extends beyond the element’s `padding`.
%

counter-increment
%exp
The `counter-increment` property increments one or more counter values.
%

cursor
%exp
The `cursor` property in CSS controls what the mouse cursor will look like when it's located over the element for which this property is set.
%

direction
%exp
This property stets the direction of content flow within a `block-level` element.
%

empty-cells
%exp
Selects empty table cells for the purpose of specifying whether or not to display borders and backgrounds on them.
%

font-family
%exp
The `font-family` property defines the font that is applied to the selected element.
%

letter-spacing
%exp
The `letter-spacing` CSS property specifies the spacing between text characters.
%

list-style-image
%exp
It allows images to be imported and used as list items' **markers**.
%

margin
%exp
Defines the outermost portion of the box model, creating space around an element, outside the borders.
%

max-width
%exp
This allows you to set the **max** `width` to which an element can grow.
%

orphans
%exp
When printing a page, `orphans` property controls the minimum number of lines of a paragraph allowed to be left on the old page, while the rest of the text is printed on a new page.
%

outline-style
%exp
Draws a line outside the element. It's similar to border except it can’t be set to cover less then all sides of the element.

It won’t affect the position of the element.
%

overflow
%exp
The `overflow` property controls what happens to the content that breaks outside of its bounds.
%

page-break-after
%exp
When printing a page, the `page-break-after` property adds a page-break after the element to which it's applied.
%

position
%exp
Allows the user to set an element's position.
%

table-layout
%exp
The property displays the element's layout as a table.
%

text-decoration
%exp
The `text-decoration` property adds an underline, overline, line-through, or a combination of lines to the selected text.
%

text-transform
%exp
The `text-transform` property in CSS controls text case and capitalization.
%

unicode-bidi
%exp
The `unicode-bidi` property handles the rendering of bi-directional text in HTML and similar markup-based languages.
%

vertical-align
%exp
The `vertical-align` property specifies the vertical alignment of an inline or table-cell box.
%

visibility
%exp
It is used to hide the rows or columns of a table or to hide a element without changing its layout.
%

white-space
%exp
Specifies how what space inside an element is handled.
%

widows
%exp
In the paged media, in the event of a paragraph splitting on two pages, the `widows` property controls the number of lines to be printed on the next page.
%

z-index
%exp
The `z-index` property in CSS controls the vertical stacking order of elements that overlap, as in which one should appear closer to the user.
%

```
