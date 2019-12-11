---
author: Mathieu

levels:

  - basic

  - medium

  - beginner

type: normal

category: feature

aspects:
  - introduction
  - workout

inAlgoPool: false


links:

  - '[MDN Doc on CSS Specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity){documentation}'
  - '[CSS Specificity](http://standardista.com/css3/css-specificity/){article}'
  - '[Scrimba CSS Specificity](https://scrimba.com/p/pWvwCg/c2vmgSa){website}'
  - '[CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}'

---

# CSS Specificity

---
## Content

Although a difficult topic, understanding how properties can be overridden will make you more confident when writing CSS code.

In the previous workout, we discussed three basic types of selectors:
 - type (`div`, `p`)
 - class (`.container`, `.title`)
 - id (`#contact`)

In order to better visualize which one has priority over the other, we can turn the list into a horizontal list:
```text
id priority > class priority > type priority
```

The last step in calculating a selector's specificity is to see the above as the header of a table with three columns:
```text
         id - class - type
selector  0 -   0   -  0  
```
For each basic selector that is part of a more complex selector, we increment the value in the appropriate column.

For example, consider the following selector that aims to style a heading, nested inside a div of class *my-class*, which is another div's child:
```css
div div.my-class h2{}
```

There are three *type* selectors (*div, div and h2*) and one *class* selector (*.my-class*). We can use the previous syntax to represent the **specificity** of the selector:
```text
id - class - type
0  -   1   -  3
```

However, this should not be seen as a base 10 representation. Adding an id selector on top of 99 class selectors would yield:
```text
         id - class - type
selector  1 -   99   -  0
```

Moreover, when comparing two selectors, you should always be aware of one thing: it doesn't matter how many type or class basic selectors make up a more complex one, they will always be outweighed by a class or an id selector, respectively:
```text
         id - class - type
selector1  0 - 110  -  0
selector2  1 -   0  -  0
```
In the above example, *selector2*'s styling is applied in case they target the same elements.

Let's go back to the first example. Say we decide to give the heading the id of *title*:
```css
div div.my-class #title{}
```
And use two selectors to target the title of the page:
```css
div div.my-class #title{
  font-size: 30px;
}
div div.my-class h2{
  font-size: 40px;
}
```
If cascading alone was the way to go, the heading *font-size* would be 40. Taking specificity into account:
```text
                        id - class - type
div div.my-class #title  1 -   1   -  2
div div.my-class h2      0 -   1   -  3
```
The font size is *30*.

As discussed earlier, inline CSS has the highest inherited specificity:
```html
<div>
  <div class="my-class">
    <h2 id="title"
      style="font-size:20px;">
      Title
    </h2>
  </div>
</div>
```
We would have to add a new column to the previous notation in order to represent inline CSS specificity:
```text
internal - id - class - type
    1    - 0  -   0   -  0
```
This means that no matter how specific a selector might be, it can never outweigh the inline styling.

There are three other factors that influence the specificity of a selector. However, we won't go into details right now. All you have to know is:
 - attribute selectors increment the middle value: `a[href="www.example.com"]` (targets hyperlinks that have the href equals to *www.example.com*) has `0-1-1` specificity.
 - pseudo-classes increment the middle value as well: `li:nth-of-type(2n)` (targets list items with an even index) has `0-1-1` specificity.
 - the `!important` keyword added to the end of a CSS declaration:

```css
/* `1-0-1-0-0` specificity. */
#title{
  font-size: 60px !important;
}
```

---
## Practice

What is the specificity of the following CSS code snippet?
```css
p#myParagraph .class1 div.class2 {}
```

???

* 0-1-2-2
* 0-1-2-1
* 1-1-1-2
* 1-0-0-4

---
## Revision

What is the specificity of the following CSS code snippet?
```css
#div.selected a{}
```

???

* 0-1-1-1
* 0-0-2-1
* 1-1-2-1
* 0-2-1-0
* 1-1-1-0
* 1-2-1-2

---
## Quiz
### which of the following selectors has the highest specificity?

```css
#nav .selected > p:hover {} /* 1 */
#footer #note {} /* 2 */
div div ul li div div img {} /* 3 */
```

 ???

* 2
* 1
* 3
* both 1 and 2
