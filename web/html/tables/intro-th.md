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
  - '[CodePen: Table Default style of th element](https://codepen.io/enkidevs/pen/ejZgbN){code}'
  - '[CodePen: Table tabular header](https://codepen.io/enkidevs/pen/ajNpdb){code}'
  - '[CodePen: Table multiple spans](https://codepen.io/enkidevs/pen/XBdpgW){code}'
  - '[CodePen: Table multiple spans](https://codepen.io/enkidevs/pen/NBNdwO){code}'
  - '[CodePen: Table abbr attribute](https://codepen.io/enkidevs/pen/ajNJdW){code}'
  - '[MDN: <th> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th){documentation}'

---
# The `<th>` Element
---
## Content

The HTML `<th>` element  stands to "tabular headers" and is used to specify a header cell for a group of table cells within a table. The `<th>` element has to be nested within a `<tr>` element. By default, the text within a `<th>` element will appear centered and bold.

Example:
```html
<table>
  <tr>
    <th>Username</th>
    <th>ID</th>
  </tr>
  <tr>
    <td>i_am_who_knocks</td>
    <td>2437845</td>
  </tr>
    <td>chain_breaker</td>
    <td>3493712</td>
  </tr>
</table>
```
Result:

![intro-th](https://img.enkipro.com/08ad30fe1f17d0d9ef5938265cc3ab73.png)


With CSS styles, the same table can really stand out visually:

![intro-th-style](https://img.enkipro.com/4b6280a5034487480b8a09b7572836e1.png)


**Spanning Columns/Rows***

The colspan and rowspan attributes can be useful in setting the table headers to span over multiple columns or rows.

```html
<th colspan="2">
  Monthly Savings
</th>
<td rowspan="2">
  Gunner
</td>
<td rowspan="2">
  Isabelle
</td>
```

![intro-th-multiple-span](https://img.enkipro.com/49606d33d1129354ae51017b8561e95d.png)



**Duel Axis Tabular Headers***

Sometimes it can make sense using tabular headers on both the first row and first column with such as example as a multiplication table like this:  

![intro-th-2-axis](https://img.enkipro.com/b20b7fec413158c6bdd989187600cd0a.png)



**Tabular Header Attributes***

The `abbr` attribute is used to add an abbreviated description for the content of a cell and speech readers may present this description rather than the content of the cell.

```html
<table>
  <tr>
    <th abbr="Make">
      Vehicle manufacturer
    </th>
    <th abbr="Model">
      Vehicle model
    </th>
  </tr>
  <tr>
    <td>Toyota</td>
    <td>CRV</td>
  </tr>
  <tr>
    <td>Ford</td>
    <td>F150</td>
  </tr>
</table>
```



---
## Practice

Arrange the HTML tags to properly create this table:

```html
<tag1>
  <tag2>
    <tag3>
      First name
    </tag3>
    <tag3>
      Last name
    </tag3>
  </tag2>
  <tag2>
    <tag4>Nikolai</tag4>
    <tag4>Tesla</tag4>
  </tag2>
  <tag2>
    <tag4>Charles</tag4>
    <tag4>Edison</tag4>
  </tag2>
</tag1>
```

tag1 = ???
tag2 = ???
tag3 = ???
tag4 = ???

* table
* tr
* th
* td
* tc
* row
* col
* colspan
* rowspan

---
## Revision

Which HTML element creates the header of a group of table cells within a table?

???

* th
* table
* tr
* td
* colhead
* rowhead

---
## Quiz

### How much do you know about HTML tables?

Which CSS property(s) style a `<th>` element of a table by default?

???

* `font-weight: bold; && text-align: center;`
* `text-align: left; && font-weight: normal;`
* `font-style: oblique; && font-style: italic;`
* `font-style: italic; && text-align: center;`
