---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  
links:

---
# Intro `<hr>`
---
## Content

The HTML `<hr>`, or the **Thematic Break** element, is used to create a thematic break between a paragraph of elements. This break is usually represented as a horizontal line and the element itself is a self-closing element, meaning it has no ending tag.

**Note:** In HTML4.01 the `<hr>` element used to represent a horizontal rule, hence the name `hr`, nevertheless that was changed in HTML5 and now it represents a thematic break.

Thematic Break Example:
```html
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

Thematic Break Result:

![hr-element](https://img.enkipro.com/a4825a1f160a93937093f8f6a4c29c66.png)

Furthermore, the `<hr>` element provides important semantic meaning, such as a change of scenery or a shift of topic. It should not be solely used to add a horizontal line (even though that is possible). To add a horizontal line you should use the appropriate CSS property.

By default, the `<hr>` element is represented with the following CSS properties:
```css
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

[View CodePen](https://codepen.io/enkidevs/pen/zayObZ)

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
