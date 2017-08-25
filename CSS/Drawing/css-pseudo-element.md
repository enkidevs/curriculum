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

*Pseudo elements* can be used in CSS to style specified parts of an element.

Using *::first-letter* pseudo element we can style the first letter of a text. For example we can style the first letter of all `<p>` elements:

```
p::first-letter{
  color: #ff0000;
  font-size: medium;
}
```

We can use a similar property to style the first line of a text (*::first-line*):

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
