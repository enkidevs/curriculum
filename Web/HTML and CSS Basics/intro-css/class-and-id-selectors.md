# Class and ID Selectors
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

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
#my-div{}
#title{}
```
And the HTML:
```html
<div id="my-div"></div>
<h2 id="title"></h2>
```

---
## Practice

Which of the following selectors does *always* target a single element?

???
* ID
* Class
* Type
* A combination between type and class


---
## Revision

In CSS, the syntax for targeting elements within a certain class is:
```
???
```
* `.class`
* `#class`
* `class`
