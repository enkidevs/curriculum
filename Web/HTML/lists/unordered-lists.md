---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

links:
  - '[MDN docs for unordered lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul){website}'
  - '[Example on codepen.io](https://codepen.io/stefan-stojanovic/pen/GdeaLg?editors=1000#){website}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){website}'
  
---
# Unordered Lists
---
## Content

The HTML `<ul>`, or **The Ordered List element** is used to represent an unordered list of items. This means that the items in the list have no special order and their order is meaningless. This list is displayed as a block element usually rendered as a bulleted list and the items in the `<ul>` elements list are represented with the `<li>` element. Also, by default, each item in the list is indented with a 40px padding to the left.

The `<ul>` element has a `type` and `compact` attribute. Nevertheless, these attributes are deprecated and for achieving the same effect you should use CSS styling.

CSS styling for the `<ul>` list element: 
  - style="list-style-type:disc"
  - style="list-style-type:circle"
  - style="list-style-type:square"
  - style="list-style-type:none"

Example of a simple list:
```
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  ...
  <li>Item N</li>
</ul>
```
Result:
```
  * Item 1
  * Item 2
  * Item 3
```

Additionally, the `<ul>` element can be nested with itself any number of times. When nested, each list section displays in a different style. This can be a dot, a square, a circle or in some cases a triangle.


Example of a nested list(Some tags have an explanation):
```
<ul> Start First list
  <li>Item A</li>
  <li>Item B     
    <ul> Start sublist for item B
      <li>Item B1</li>
      <li>Item B2
        <ul> Start sublist for item B2
          <li>Item B2.1</li>
          <li>Item B2.2</li>
          <li>Item B2.3</li>
        </ul> Finish B2 sublist
      </li> Finish B2 item
      <li>Item B3</li>
    </ul> Finish B sublist
  </li> Finish B item
  <li>Item C</li>
</ul>
```
**Notes:**
	- The closing `</li>` tag for `Item B` is placed after all the sub-items/lists for that item are listed which is right before the start of the third item(`Item C`) in the first list.
	- The closing `</li>` tag for `Item B2` is placed after all the sub-items/lists for that item are listed which is right before the start of the third item(`Item B3`) in the sublist of item B.

The result of the above list with the notes:
```
  Start First list
  * Item A
  * Item B
      Start sublist for item B
      - Item B1
      - Item B2
          Start sublist for item B2
          o Item B2.1
          o Item B2.2
          o Item B2.3
       Finish B2 sublist
       Finish B2 item
      - Item B3
    Finish B sublist
    Finish B item
  * Item C
```
The same result, this time how it looks without notes:
```
  * Item A
  * Item B
      - Item B1
      - Item B2
          o Item B2.1
          o Item B2.2
          o Item B2.3
      - Item B3
  * Item C
```

The `<ul>` element is best used for things like a grocery list or any other list that doesn't require a specific order.

---
## Practice

Complete the HTML code to create a bulleted list. 
```
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

```
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
