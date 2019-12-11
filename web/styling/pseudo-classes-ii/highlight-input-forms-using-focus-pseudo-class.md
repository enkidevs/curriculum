---
author: Demonus

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout

tags:

  - Pseudo-class

  - :focus

  - forms

links:

  - '[MDN Docs on :focus](https://developer.mozilla.org/en-US/docs/Web/CSS/:focus)[documentation}'


---

# Highlight input forms using `:focus` pseudo-class

---
## Content

Responsiveness can make the forms more user-friendly and easier to read.

The `:focus` pseudo-class allows us to target the form element that is clicked on. This means we can change how the input is displayed to better inform the user on what to input.  

```css
input:focus{
  background-color: red;
}
```

Pseudo-classes can be combined with classes, or other selectors, to specify different elements:

```css
.name:focus{
  background-color: red;
}

.surname:focus{
  background-color: blue;
}
```

---
## Practice

What does the `:focus` pseudo class allow?
???


* The clicked on form element to be targeted.
* Input forms to be created.
* Creates a focus point within a page.

---
## Revision

What does the following CSS code do?
```css
name:focus {
   background-color: red;
}
dob:focus {
   background-color: green;
}
```
???

* Sets the background colour of the name input to red, and of the date of birth input to green.
* Sets the background colour of the name input to red and the rest of the page to green.
* Sets the background colour of the date of birth input to green and the rest of the page to red.
