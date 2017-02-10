# CSS Specificity
author: Mathieu

levels:

  - basic

  - medium

  - beginner

type: normal

inAlgoPool: false

category: feature

notes: >-
  http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity){website}

  - '[standardista.com](http://standardista.com/css3/css-specificity/){website}'

---
## Content

Specificity is one of the most difficult topics to grasp. If you understand how properties can be overridden, writing CSS gets twice as easy.

In the previous workout, we discussed about three basic types of selectors:
 - type (`div`, `p`)
 - class (`.container`, `.title`)
 - id (`#contact`)

In order to better visualize which one has priority over the other, we can turn the list into a horizontal one:
```text
id > class > type
// or
id - class - type
```
Consider the following selector that aims to style a heading, nested inside a div of class *my-class*, which is another div's child:
```css
div div.my-class h2{}
```
There are three *type* selectors (*div, div and h2*) and one *class* selector (*.my-class*). We can use the previous syntax to represent the **specificity** of the selector:
```text
0 - 1 - 3
```
However, this should not be seen as a base 10 representation. By adding a class to the h2, `h2.title`, its specificity becomes:
```text
0 - 2 - 3
```
Say we decide to give the heading the id of *title*:
```css
div div.my-class #title{}
```
We aim to target the title of the page with both selectors. Imagine the following scenario:
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
1 - 1 - 2
vs
0 - 1 - 3
```
The font size is be *30* in the end.

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
We would have add a new column to the previous notation in order to represent inline CSS specificity:
```text
1 - 0 - 0 - 0
```
This means that however specific a selector may be, it can never overweight an inline styling.

There are three other factors that influence the specificity of a selector. However, we won't go into details right now. All you have to know is that:
 - attribute selectors increment the middle value: `a[href="www.example.com"]` (targets hyperlinks that have the href equals to *www.example.com*) has `0-1-1` specificity.
 - pseudo-classes increment the middle value as well: `li:nth-of-type(2n)` (targets list items with an even index) has `0-1-1` specificity.
 - the `!important` keyword added to the end of a CSS declaration:
  ```css
  #title{
    font-size: 60px !important;
  }
  ```
  Has `1-0-1-0-0` specificity.
---
## Practice

What is the specificity of the following CSS code snippet?
```css
p#myParagraph .class1 div.class2 {}
```

???
*0-1-2-2
*0-1-2-1
*1-1-1-2
*1-0-0-4

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
