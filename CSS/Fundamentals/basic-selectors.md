# Basic Selectors
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [learn.shayhowe.com](http://learn.shayhowe.com/html-css/getting-to-know-css/#combining-selectors){website}

---
## Content

Before discussing *specificity*, we should explain what a **selector** is. As stated in the first insight, selectors are a way of targeting particular HTML elements styling.

*Selectors* range from the simplest:
```css
p {}
#mydiv {}
a.outter-links {}
```
To the more complex:
```css
p.main:first-line span.myspan {}
```
There are *three main types* of selectors.

### Type Selectors

They are the most generic selectors, which target elements by their type: to select all `<div>` elements in the HTML document, `div` selector is needed:
```css
div {}
p {}
body{}
```
And the HTML:
```html
<body>
  <div></div>
  <p></p>
</body>

```

### Class Selectors

Class selectors are more specific than *type selectors* because they select a smaller group of elements rather than all of one type. In the style sheet, they are always invoked with a period before the name of the class:
```css
.my-div{}
.main-content{}
.cities {}
```
And the HTML:
```html
<div class="my-div"></div>
<div class="main-content cities">
                       </div>
<p class="cities"></p>
<div class="my-div"></div>
```

An element can have multiple classes, as you can see above. The `<div>` with `main-content` and `cities` will be styled by both classes. Because of cascading, if both of them are changing the same property, the class defined lower will have the higher priority (in this case, `cities`).


### ID Selectors
ID selectors have the most priority out the three, as they target one unique element at a time. In the style sheet, they are always invoked with a hashtag before the id:
```css
#myElement{}
#title{}
```
And the HTML:
```html
<div id="myElement"></div>
<h2 id="title"></h2>
```

---
## Practice

Which of the following selectors does *always* target a single element?

???
*ID
*Class
*Type
*A combination between type and class

---
## Revision

The three main types of selectors are:

???
*Type/Class/ID
*Type/Class/Block
*Tag/Class/Block
*Tag/Block/Type
