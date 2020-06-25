---
author: Billiexu

levels:

  - medium

type: normal

category: how to

tags:

  - webdevelopment

aspects:
  - workout
  - deep

links:

  - '[30 CSS selectors](http://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048){article}'
  - '[MDN Docs on Selectors](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Selectors){documentation}'


---

# Combining selectors

---
## Content

Two selectors can be combined to refer to a certain element. The most common ones are '+' and '~'.  


### X+Y

```css
ul + p {
   color: orangered;
}

```

This is referred to as *an adjacent selector*. It will select only the element that is **immediately preceded** by the former element. In this case, only the first paragraph after each `ul` will have red text.

### X~Y

```css
ul ~ p {
   font-weight: bold;
}

```
This sibling combinator is similar to `X + Y`, however, it's less strict. While an adjacent selector `(ul + p)` will only select the first element that is immediately preceded by the former selector, this one is more generalized. It will select, referring to our example above, any p elements, as long as they follow a `ul`.

Consider the HTML code:
```html
<ul>
 <li>First list item.</li>
 <p> A paragraph nested inside the
                 list.</p>
</ul>
<p>A paragraph immediately after ul.</p>
<p>A second paragraph after ul.</p>
```

Both of the selectors are used in this example:

![HtmlToSvgmin.svg](https://img.enkipro.com/55077de02fb561f44f83e976dba488a8.png)

---
## Practice

Which of the following two selectors is an adjacent selector? ???


* `+`
* `~`

---
## Revision

Describe the following CSS code snippet in one line?
```css
ul + h {
   font-family: "Arial Narrow";
}
```
???

* Only the first header after each unordered list will use the Arial Narrow font.
* The header before and header after each unordered list will use the Arial Narrow font.
* All headers will use the Arial Narrow font.
