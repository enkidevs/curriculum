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

```plain-text
id priority > class priority > type priority
```

The last step in calculating a selector's specificity is to see the above as the header of a table with three columns:

```plain-text
         id - class - type
selector  0 -   0   -  0
```

For each basic selector that is part of a more complex selector, we increment the value in the appropriate column.

For example, consider the following selector that aims to style a heading, nested inside a div of class *my-class*, which is another div's child:

```css
div div.my-class h2{}
```

There are three *type* selectors (*div, div and h2*) and one *class* selector (*.my-class*). We can use the previous syntax to represent the **specificity** of the selector:

```plain-text
id - class - type
0  -   1   -  3
```

However, this should not be seen as a base 10 representation. Adding an id selector on top of 99 class selectors would yield:

```plain-text
         id - class - type
selector  1 -   99   -  0
```

Moreover, when comparing two selectors, you should always be aware of one thing: it doesn't matter how many type or class basic selectors make up a more complex one, they will always be outweighed by a class or an id selector, respectively:

```plain-text
         id - class - type
selector1  0 - 110  -  0
selector2  1 -   0  -  0
```

In the above example, *selector2*'s styling is applied in case they target the same elements.


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
