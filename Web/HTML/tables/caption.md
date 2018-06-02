---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - workout
  - deep

links:
  - '[MDN docs for caption](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption){website}'
  
---
# Caption
---
## Content

The HTML `<caption>`, or **The Table Caption element** is used to specify a title for an HTML table. 

When used, the `<caption>` element has to be the first element within the `<table>` element. On the other hand, if you want to move the position or edit the styling of the `<caption>` element, you should use a CSS property.

The `<caption>` element has an `align` attribute, nevertheless this attribute is deprecated, and it's better to use the `caption-side` and `text-align` CSS properties for achieving the same effect.

Example:
```
<table>
  <caption>Employee List</caption>
  <tr>
    <td>Name</td>
    <td>Start Date</td>
  </tr>
  <tr>
    <td>Jimmy</td>
    <td>Jan 11th</td>
  </tr>
</table>
```
Result:
```
  Employee List
Name  Start date
Jimmy Jan 11th
```
**Note: If a `<table>` element has a `<caption>` and is the only child of a `<figure>` element, you should use a `<figcaption>` instead of the `<caption>` element.**

Adding a clear and concise description of the table's content within the `<caption>` element is useful for helping people decide if they want to read the table or skip over it.  

---
## Practice

Code the following table.  

```
<tag1>
  <tag2>Employee List</tag2>
  <tag3>
    <tag4>Name</tag4>
    <tag4>Start Date</tag4>
  </tag3>
  <tag3>
    <tag4>Jimmy</tag4>
    <tag4>Jan 11th</tag4>
  </tag3>
</tag1>
```

tag1 = ???
tag2 = ???
tag3 = ???
tag4 = ???

* table
* caption
* tr
* td
* label
* title
* tt

---
## Revision

What HTML element represents the title of a table?

???

* caption
* title
* tt
* label
* cap
* tabletitle

---
## Quiz

### How much do you know about HTML tables?

If the `<caption>` of an HTML table is placed under the table's data, where must the code for the caption be placed?

???

* As the first element within the table
* As the last element within the table 
* Anywhere within the table
* Before the table element
* After the table element



