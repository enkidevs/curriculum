---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - workout
  - deep

aspects:
  - introduction
  - workout
  - deep

links:
  - '[HTML <caption> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption){documentation}'

---
# The `<caption>` Element
---
## Content

The HTML `<caption>`, or the **Table Caption** element is used to specify a title for an HTML table.

Adding a clear and concise description of the table's content within the `<caption>` element is useful for helping people decide if they want to read the table or skip over it.

When used, `<caption>` element must to be the **first** element within the `<table>` element to be valid, although using CSS it can be moved accordingly. The property `caption-side` can be set to `bottom` to quickly move the caption to the bottom of the table even with it added to the top of the table.

Example:
```html
<table>
  <caption>Employee List</caption>
  <tr>
    <td><b>Name</b></td>
    <td><b>Start Date</b></td>
  </tr>
  <tr>
    <td>Jimmy</td>
    <td>Jan 11th</td>
  </tr>
    <td>Sally</td>
    <td>Jan 12th</td>
  </tr>
</table>
```

![table-caption](https://img.enkipro.com/ec2e595bc8ee7beb5d9882c1ae15022e.png)

[View CodePen](https://codepen.io/enkidevs/pen/OwNXqB)

**Note:** If a `<table>` element has a `<caption>` and is the only child of a `<figure>` element, you should use a `<figcaption>` instead of the `<caption>` element.

---
## Practice

Code the following table.

```html
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
