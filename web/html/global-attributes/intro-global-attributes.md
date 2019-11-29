---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

aspects:
  - introduction
  - workout
  - deep
 
links:
  -  '[Global Attributes List](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){documentation}'
---
# Intro Global Attributes
---
## Content

Most HTML elements have attributes specific to them. However, there is a set of attributes called “Global Attributes” which are shared among all HTML elements.

We will cover the 4 most used global attributes in this insight. Those are: `class`, `id`, `style` and `title`. 

### id

The `id` attribute is used to define a unique identifier or an ID. The value of the `id` attribute has to be unique for the whole web page or document. This is because the `id` attributes value is used to identify an element you want to be styled or linked.

### class

The `class` attribute is used to give CSS and/or JavaScript access to an element for editing, styling or any other use these 2 languages can offer.

For instance, lets say we have this HTML:
```html
<p class="demo">
  Some text
</p>
``` 
and we have this CSS:
```css
.demo {
  background-color: black;
  color: white;
}
```
This means that any HTML element with a `class="demo"` attribute will be white and have a black background color.

Another example(same CSS):
```html
<h1 class="demo">
  Some header text
</h1>
```

### style

The `style` attribute contains CSS declarations and is used to style an element internally. This attribute should not be used to style an entire page. You should add your styles within a different file/s.

Example:
```html
<p style="color:green"> 
  This is green
</p>

<p style="color:blue">
  This is blue
</p>
```

### title

The `title` attribute is used to provide useful information about the element it belongs to. In some cases, the text within the `title` attribute is displayed as a tooltip upon hovering over the element.

Example tooltip upon hovering over a picture:
```html
<img 
  src="http://enki.com/enki-logo.svg"
  title="Enki logo">
```
Result:
![logo](https://img.enkipro.com/96c1cc81cf8b05259e4f409e58ee6475.png)

---
## Practice

Which of these attributes is not a global attribute?

???

* href
* id
* class
* style
* title

---
## Revision

Contains CSS declarations: ???
Provides useful information about the element it belongs to: ???
Gives CSS and JS ability to modify an element: ???
Unique identifier: ???

* style
* title
* class
* id
* uniqueid
* modify
* description
* declaration
