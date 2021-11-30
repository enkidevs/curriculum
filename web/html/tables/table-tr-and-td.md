---
author: Stefan-Stojanovic
type: normal
category: must-know
tags:
  - workout
  - introduction
links:
  - '[CodePen: Table without Style](https://codepen.io/enkidevs/pen/JBXWLL){code}'
  - '[CodePen: Table with Style](https://codepen.io/enkidevs/pen/JBXWbr){code}'
  - >-
    [HTML <table>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){documentation}
  - >-
    [HTML <tr>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){documentation}
  - >-
    [HTML <td>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Elements (table, tr & td)


---

## Content

The HTML table is used to represent information in a table made of columns and rows.

When creating a table in HTML the `<table>` element is used to create the entire table, the `<tr>`(Table Row) element is used to create the tables rows and the `<td>` (Table Data) element is used to create table data.

Example of a simple table:

```html
<table>
  <tr>
    <td>Matthew</td>
    <td>Denver</td>
    <td>Colorado</td>
  </tr>
  <tr>
    <td>Liz</td>
    <td>San Francisco</td>
    <td>California</td>
  </tr>
</table>
```

![simple-table](https://img.enkipro.com/33ef82776c50d6e9cbb00bc6b503a836.png)

[View CodePen](https://codepen.io/enkidevs/pen/JBXWLL)

Tables themselves in HTML without CSS can appear a little messy and confusing compared to those that are styled more appropriately.

![simple-table-with-style](https://img.enkipro.com/4650ccb27aa2d9774c578221097c1ddb.png)

[View CodePen](https://codepen.io/enkidevs/pen/JBXWbr)

Styling tables can take a little practice, as seen in the example above, and often use more specific selectors. Such as, in order to prevent the last column or bottom row from having styles that may look strange, properties on these rows (or cells) can be reset using the pseudo class `:last-child` like this.

```css
tr:last-child {
  border-bottom: none;
}
```


---

## Practice

Arrange the HTML tags to properly create this table:

```html
<tag1>
  <tag2>
    <tag3>Matthew</tag3>
    <tag3>Denver</tag3>
    <tag3>Colorado</tag3>
  </tag2>
  <tag2>
    <tag3>Liz</tag3>
    <tag3>San Francisco</tag3>
    <tag3>California</tag3>
  </tag2>
</tag1>
```

```html
tag1 = ???
tag2 = ???
tag3 = ???
```

- table
- tr
- td
- tc
- th
- row
- col
- colspan
- rowspan


---

## Revision

Which HTML element mathes these descriptions:

Defines the entire table:

```html
???
```

Defines the table row:

```html
???
```

Defines the table data:
```html
???
```

- `<table>`
- `<tr>`
- `<td>`
- `<et>`
- `<row>`
- `<col>`


---

## Quiz

### How much do you know about HTML tables?


What is the output of this table?
Choose the appropriate option; A,B,C or D:

```html
<table>
  <tr>
    <td>Pencil</td>
    <td>1.99</td>
    <td>295</td>
  </tr>
  <tr>
    <td>Pen</td>
    <td>2.49</td>
    <td>423</td>
  </tr>
</table>
```

A

```html
Pencil 1.99 295
Pen    2.49 423
```

B

```html
Pen    2.49 423
Pencil 1.99 295
```

C

```html
Pencil 1.99295
Pen    2.49423
```

D

```html
Pencil 2.99 495 Pen 1.49 223
```

???

- Option A
- Option B
- Option C
- Option D
