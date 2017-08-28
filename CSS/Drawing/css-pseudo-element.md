# CSS pseudo element
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

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

#CSS:
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

#CSS
.circle::after{
  content: url(circle_img.png);
}
```
The difference between inserting an image on a web page using an `<img>` html tag and using a CSS pseudo element is that, when using pseudo elements the dimmensions of the image can't be adjusted.

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
