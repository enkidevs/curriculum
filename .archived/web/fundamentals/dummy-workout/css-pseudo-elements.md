---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More about pseudo elements](https://www.html5rocks.com/en/tutorials/shapes/getting-started/)'

---
# CSS pseudo element

---
## Content

*Pseudo elements* are used in CSS to style specified parts of an element.

The `::first-letter` pseudo element styles the first letter of any text element. For example, we can style the first letter of all `<p>` elements:

```
p::first-letter{
  color: #ff0000;
  font-size: medium;
}
```

We can use a similar property to style the first line of a text (`::first-line`):

```
p::first-line{
  color: #ff0000;
  font-variant: caps;
}
```

Pseudo elements can be combined with any other CSS selector, here's an example with a class:

```
p.first_paragraph::first-line{
  color: #ffa500;
  font-size: xx-large;
}
```

Pseudo elements can also be used to add content before and after any CSS element.

Consider the following situation: We have two `<div>` elements containing the first name and surname of some person. If we want to point out which is the surname and which one is the first name we can use the `::before` pseudo element:
```
<div class="firstname"> John </div>
<div class="surname"> Fischer </div>

//CSS:
.firstname::before{
  content: "First Name: ";
}

.surname::before{
  content: "Surname: ";
}
```

We can also use `::before` and `::after` to add images where we need them:
```
<div class="circle"> Circle: </div>

//CSS
.circle::after{
  content: url(circle_img.png);
}
```

Note the difference between inserting an image on a web page using an `<img>` html tag and using a CSS pseudo element is that, when using pseudo elements the dimensions of the image can't be adjusted.

---
## Practice

Consider the following `<div>` element. We need to do the following edits:
- first letter of the paragraph *red* and *large*
- the first line must be in capital letters
```
<div class="text">
Sample text row 1
Sample text row 2
this is my text
new line
</div>


.text::???{
    ???: 	#FF0000;
    font-size: xx-???;
}
.text::???{
  font-???: caps;
}
```

* first-letter
* color
* large
* first-line
* variant
* size
* small
* medium
* before

---
## Revision

Suppose we have a web page meant to teach children different kinds of shapes. We need to exemplify a square shape by adding an image after the text, fill the gaps accordingly:
```
<div class="square"> Square: </div>

.???::???{
  ???: url(square_img.png);
}
```
Can we adjusted the size of the image to properly fit on the page?
???

* square
* after
* content
* no
* yes
* before
* square_class
