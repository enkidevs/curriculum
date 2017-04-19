# What Is Cascading?
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

Within CSS, multiple style blocks *cascade* from the top of the style sheet to the bottom. Here's an example:
```
p {
  color: red;
  font-weight: bold;
}
p {
  color: green;
}
```
In the above, we first select all paragraphs on the page and set their font color to `red` and their style to `bold`. Then we select the all paragraphs again and set their font color to `green`.

Because the selector that sets their color to `green` comes after the selector that sets their color to `red`, it will *override* the initial value. Paragraphs will still be `bold` as the second selector doesn't specify another value for the `font-weight` property.

The same cascading property works for declaring different values in the same selector:
```
/* paragraphs will be green */
p {
  color: red;
  color: green;
}
```
CSS doesn't always behave like this, however. There is a property of selectors, called **specificity**, which breaks the rule. We will talk about specificity in the course of next workout.

---
## Practice

What is the final `background-color` of the `<p>` elements?
```
p {
 background-color: blue;
 background-color: red;
}
p {
  background-color: green;
}
```
???

*green
*blue
*red
*the default one

---
## Revision

Where should a style block be located in the CSS file for it to be applied last?

???

*Bottom of the file.
*Middle of the file.
*Top of the file.
*Doesn't matter.
