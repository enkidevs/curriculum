# CSS pseudo element
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More about pseudo elements](https://www.html5rocks.com/en/tutorials/shapes/getting-started/)'

---
## Content

*Pseudo elements* are used in CSS to style specified parts of an element.

By using `::first-letter` pseudo element we can style the first letter of a text. For example we can style the first letter of all `<p>` elements:

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

Note that we are able to use pseudo elements with CSS classes as well:

```
p.first_paragraph::first-line{
  color: #ffa500;
  font-size: xx-large;
}
```

Apart from text editing purposes, pseudo elements can be used to add content before and after any CSS element.

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

Note the difference between inserting an image on a web page using an `<img>` html tag and using a CSS pseudo element is that, when using pseudo elements the dimmensions of the image can't be adjusted.

---
## Practice

Suppose we have a file "demo.txt" that contains two paragraphs. We want to style the first letter to be of size large and red colored. Then we want to the first line from the file to be displayed in capital letters. Fill the gaps such accordingly:
```
.first_paragraph::???{
    ???: 	#FF0000;
    font-size: xx-???;
}
.first_paragraph::???{
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

Suppose we have a web page ment to teach children different kinds of shapes. We need to exemplify a square shape by adding an image after the text, fill the gaps accordingly:
```
<div class="square"> Square: </div>

.???::???{
  ???: url(square_img.png);
}
```
Can we adjusted the size of the image to propperly fit on the page?
???

* square
* after
* content
* no
* yes
* before
* square_class
