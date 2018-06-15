---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

links:
  - '[Codepen Example](https://codepen.io/stefan-stojanovic/pen/zaEWdL){website}'

---
# Intro hr
---
## Content

The HTML `<hr>`, or **The Thematic Break element** is used to create a thematic break between a paragraph of elements. This break is usually represented as a horizontal line and the element itself is a self-closing element, meaning it has no ending tag.

**Note: In HTML4.01 the `<hr>` element used to represent a horizontal rule, hence the name `hr`, nevertheless that was changed in HTML5 and now it represents a thematic break.**

Example:
```
<h3>Enki App</h3>
<p>
  Enki provides daily workouts.
</p>

<hr>

<h3>EnkiBot</h3>
<p>
  Build your skills and expertise
  with our personalized learning bot.
</p>
```

Result would look something like:
```
Enki App
Enki provides daily workouts.
___________________________________

EnkiBot
Build your skills and expertise
with our personalized learning bot.
```

Furthermore, the `<hr>` element provides important semantic meaning and should not be solely used to add a horizontal line(even though that is possible). To add a horizontal line you should use the appropriate CSS property.

This element is mostly used for a change of scenery or a shift of topic.

This element supports global attributes and used to have 5 element-specific attributes:
  - `align`
  - `color`
  - `noshade`
  - `size` and
  - `width`
  
Nevertheless, all 5 attributes mentioned above are deprecated and/or obsolete, and for achieving the same effect you should use the appropriate CSS properties.

Also, by default the `<hr>` element is represented with the following CSS properties:
```  
  hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
}
```

---
## Practice

Which of these CSS properties is not applied to the `<hr>` element by default?

???

* display: inline:
* display: block;
* margin-top: 0.5em;
* margin-bottom: 0.5em;
* margin-left: auto;
* margin-right: auto;


---
## Revision

The `<hr>` element was referred to as what in these different HTML versions? 

In HTML4: ???
In HTML5: ???

* horizontal rule
* thematic break
* simple black bar
* horizontal line 

---
## Quiz

### Answer a quick HTML question??

What HTML element is used to define a thematic change in the web page content?

???

* hr
* tc
* tb
* body
* section
* small
