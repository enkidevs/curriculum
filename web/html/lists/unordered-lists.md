---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

aspects:
  - introduction

links:
  - '[HTML <ul> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul){documentation}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){documentation}'

---
# Unordered Lists
---
## Content

The HTML `<ul>`, or the **Unordered List** element is used to represent an unordered list of items.
```html
<ul>
  <li>Item x</li>
  <li>Item x</li>
  <li>Item x</li>
</ul>
```
![list-ul](https://img.enkipro.com/a69d82602a99e3ab97dafa3e3882628a.png)

[View CodePen](https://codepen.io/enkidevs/pen/zLwOLq)

Unordered lists are displayed as a block element and typically display with as a bulleted list.

The items within the `<ul>` elements list are represented with the `<li>` element. Also, by default, each item in the list is indented with a 40px padding to the left.

The bullet can be changed using CSS styling:
  - style="list-style-type:disc"
  - style="list-style-type:circle"
  - style="list-style-type:square"
  - style="list-style-type:none"

![list-styles](https://img.enkipro.com/479323c3b258bb078ff59111fa831338.png)


[View CodePen](https://codepen.io/enkidevs/pen/qKMMyr)

Additionally, the `<ul>` element can be nested with itself any number of times. The primary unordered list is displayed with the discs by default,  nested lists will display with the circles by default, nested lists within nested lists will display with the squares by default.

Example of a nested lists:
```html
<ul>
  <li>Item A</li>
  <li>Item B
    <ul>
      <li>Item B1</li>
      <li>Item B2
        <ul>
          <li>Item B2.1</li>
          <li>Item B2.2</li>
          <li>Item B2.3</li>
        </ul>
      </li>
      <li>Item B3</li>
    </ul>
  </li>
  <li>Item C</li>
</ul>
```

![list-ul-nested](https://img.enkipro.com/f8f1d5c28640da344507a4e3e164847b.png)

[View CodePen](https://codepen.io/enkidevs/pen/PBmYBB)

**Notes:**
- The key to nesting lists is making sure the nested lists are within the appropriate list items (`<li>` and `</li>`).

**Best Uses:**
The `<ul>` element is best used for:

* a grocery list
* or any other list that doesn't require a specific order.

---
## Practice

Complete the HTML code to create a bulleted list.

```html
<A>
  <B>Apples</B>
  <B>Oranges</B>
  <B>Strawberries</B>
</A>
```

A: ???
B: ???

* `ul`
* `li`
* `ol`
* `nl`
* `dot`
* `bullet`
* `list`
* `dotlist`

---
## Revision

What does this code create?

```html
<ul>
  <li>Item</li>
  <li>Item</li>
  <li>Item</li>
</ul>
```

???

* unordered list
* ordered list
* uniform list
* unlist item
* utility list
* uni list

---
## Quiz

### How much do you know about unordered lists?

Which statement about unordered lists is not true?

???

* Paragraph tags are required within each list item.
* By default, each list item displays with a black disc.
* Typically, each line is indented with 40px of padding-left.
* They display as block elements.
