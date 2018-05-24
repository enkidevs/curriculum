---
author: Billiexu

levels:

  - medium

type: normal

category: how to

tags:

  - webdevelopment 


links:

  - '[code.tutsplus.com](http://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Selectors){documentation}'


---

# Combining selectors

---
## Content

Two selectors can be combined to refer to a certain element. The most common ones are '+' and '~'.  


### X+Y

```
ul + p {
   color: orangered;
}

```

This is referred to as *an adjacent selector*. It will select only the element that is **immediately preceded** by the former element. In this case, only the first paragraph after each `ul` will have red text.

### X~Y

```
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

![HtmlToSvgmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%2238%22%20y=%2246%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22300%22%20fill=%22#fff%22%3EFirst%20list%20item.%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%2238%22%20y=%22122%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22300%22%20fill=%22#fff%22%3EA%20paragraph%20nested%20inside%20the%20list.%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%2238%22%20y=%22198%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22800%22%20fill=%22#ff4500%22%3EA%20paragraph%20immediately%20after%20ul.%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%2238%22%20y=%22274%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22800%22%20fill=%22#fff%22%3EA%20second%20paragraph%20after%20ul.%3C/text%3E%3C/g%3E%3C/svg%3E)

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

