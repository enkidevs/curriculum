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

Sometimes *CSS* does not behave in the way we want or expect it to, suppose we have this piece of code:
```
HTML:
<ul id="dream-garage">
   <li>Saleen S7R</li>
   <li>Lamborghini Countach</li>         
   <li>Ferrari F430 GT3</li>
</ul>
```
And now we want to hightlight the favourite one:
```
HTML:
<ul id="dream-garage">
   <li class="favourite">Saleen S7R</li>
   <li>Lamborghini Countach</li>
   <li>Ferrari F430 GT3</li>
</ul>
CSS:
.favorite {
  color: red;
  font-weight: bold;
}
```
But upon compilation we don't get our Saleen highlighted. And after looking through *CSS* document we find:
```
ul#dream-garage li {
   font-weight: normal;                   
   font-size: 12px;
   color: black;
}
```
In this case *id "dream-garage"* selector is more **specific** than *class "favourite"* which neutralises effect of the latter.
**Specificity** determines which selector affects desired piece of *HTML* code, this goes in addition to *cascading*. Let's take a look at four different selector attributes  and the *CSS* inline styling:
 - Inline styles
 - IDs
 - Classes, attributes and pseudo-classes
 - classesElements and pseudo-elements

The ones at the bottom have the lowest *specificity* and are overridden by the styling under higher attributes. The way to calculate the *specificity* of a selector is to calculate the amount of each of the above attributes, the one with most of them wins.

**NOTE: even 1 of more *specific* attributes counts more than any number of less *specific* attributes.**

Example:
```
.favorite: 0 inline, 0 ID, 1 Class, 0 Elem
 in short: 0-0-1-0

ul#dream-garage li: 0 inline, 1 ID,
                           0 Class, 2 Elem
 in short: 0-1-0-2
```


There are some additional factors that influence the specificity of a selector:
 - `!important` keyword means an automatic win and can only be overridden by other `!important` with other higher specificities, this is through considered to be bad practice.
 ```css
 #title{
   font-size: 60px !important;
 }
 ```
 - `not()` adds no value by itself but increases whatever is inside by one, in the following case it would add 1 Class attribute to the selector.
 ```
 div:not(.favourite) p {
  color: white;
}
 ```

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
