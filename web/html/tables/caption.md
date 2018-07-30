---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.1: 1000
  web.layout-html.1: 1000

tags:
  - workout
  - deep

links:
  - '[CodePen: Table Caption](https://codepen.io/enkidevs/pen/OwNXqB){code}'
  - '[MDN docs for caption](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption){website}'

---
# Caption
---
## Content

The HTML `<caption>`, or the **Table Caption** element is used to specify a title for an HTML table.

Adding a clear and concise description of the table's content within the `<caption>` element is useful for helping people decide if they want to read the table or skip over it.  

When used, `<caption>` element must to be the **first** element within the `<table>` element to be valid, although using CSS it can be moved accordingly. The property `caption-side` can be set to `bottom` to quickly move the caption to the bottom of the table even with it added to the top of the table.   

Example:
```
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

![table-caption](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22179%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22179%22%20fill%3D%22%233E94EC%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M20%2020h280v134H20z%22%2F%3E%3Cpath%20fill%3D%22%231B1E24%22%20d%3D%22M20%20116h280v38H20z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%2239%22%3EName%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%2272%22%3EJimmy%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%22105%22%3ESally%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22168%22%20y%3D%22105%22%3EJan%2012th%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23CBD4D4%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%22116%22%20y%3D%22140%22%3EEmployee%20List%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22168%22%20y%3D%2272%22%3EJan%2011th%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22168%22%20y%3D%2239%22%3EStart%20Date%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23C8CAD7%22%20stroke-linecap%3D%22square%22%20d%3D%22M154.5%2020.5v95.05M299.5%2085h-279%22%2F%3E%3Cpath%20stroke%3D%22%239EA7AF%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M299%20154H21%22%2F%3E%3Cpath%20stroke%3D%22%23C8CAD7%22%20stroke-linecap%3D%22square%22%20d%3D%22M300%2052H21%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/OwNXqB)-->

**Note:** If a `<table>` element has a `<caption>` and is the only child of a `<figure>` element, you should use a `<figcaption>` instead of the `<caption>` element.

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
