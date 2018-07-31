---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.3: 1000

aspects:
  - introduction
  - workout
links:
  - '[Codepen: HR Element with Default Styles](https://codepen.io/enkidevs/pen/zayObZ){code}'

---
# Intro hr
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

![hr-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22208%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22208%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20stroke%3D%22%23979797%22%20stroke-linecap%3D%22square%22%20d%3D%22M24.5%2092.5h274%22%2F%3E%3Cpath%20stroke%3D%22%23EEE%22%20stroke-linecap%3D%22square%22%20d%3D%22M24.5%2093.5h274%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2222%22%20y%3D%2234%22%3EEnki%20App%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2222%22%20y%3D%22129%22%3EEnkiBot%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2223%22%20y%3D%22168%22%3EBuild%20your%20skills%20and%20expertise%20with%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2223%22%20y%3D%22185%22%3Eour%20personalized%20learning%20bot.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2223%22%20y%3D%2272%22%3EEnki%20provides%20daily%20workouts.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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

<!--[View CodePen](https://codepen.io/enkidevs/pen/zayObZ)-->

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
