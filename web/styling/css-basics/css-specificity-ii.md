---
author: Mathieu
type: normal
category: feature
links:
  - >-
    [MDN Doc on CSS
    Specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity){documentation}
  - '[CSS Specificity](http://standardista.com/css3/css-specificity/){article}'
  - '[Scrimba CSS Specificity](https://scrimba.com/p/pWvwCg/c2vmgSa){website}'
  - >-
    [CSS Tips &
    Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# CSS Specificity (Part 2)


---

## Content

Looking at the example from the previous insight, say we decide to give the heading the id of *title*:

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

```plain-text
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

```plain-text
internal - id - class - type
    1    - 0  -   0   -  0
```

This means that no matter how specific a selector might be, it can never outweigh the inline styling.

There are three other factors that influence the specificity of a selector. However, we won't go into details right now. All you have to know is:

- attribute selectors increment the middle value: `a[href="www.example.com"]` (targets hyperlinks that have the href equals to *[www.example.com](http://www.example.com)*) has `0-1-1` specificity.
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

- 0-1-2-2
- 0-1-2-1
- 1-1-1-2
- 1-0-0-4


---

## Revision

What is the specificity of the following CSS code snippet?

```css
#div.selected a{}
```

???

- 0-1-1-1
- 0-0-2-1
- 1-1-2-1
- 0-2-1-0
- 1-1-1-0
- 1-2-1-2


---

## Quiz

### which of the following selectors has the highest specificity?


```css
#nav .selected > p:hover {} /* 1 */
#footer #note {} /* 2 */
div div ul li div div img {} /* 3 */
```

 ???

- 2
- 1
- 3
- both 1 and 2
