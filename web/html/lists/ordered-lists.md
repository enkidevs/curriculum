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

standards:
  web.markup-text.2: 10

links:
  - '[MDN docs for ordered lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){website}'

---
# Ordered Lists
---
## Content

The HTML `<ol>`, or the **Ordered List** element is used to represent an ordered list of items.
```html
<ol>
  <li>Do this first.</li>
  <li>This second.</li>
  <li>And this last.</li>
</ol>
```
![list-ol](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%201.%20Do%20this%20first.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%202.%20This%20second.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%203.%20And%20this%20last.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

[View CodePen](https://codepen.io/enkidevs/pen/QBvLQo)

Ordered lists are displayed as a block element and typically display with preceding numbering; these can be numerals, letters, Roman numerals or even bullets.

The items within the `<ol>` elements list are represented with the `<li>` element. Also, by default, each item in the list is indented with a 40px padding to the left.

The `<ol>` element has 3 attributes:
  - `type`
  - `reversed`
  - `start`

**Type**

The `type` attribute is used to specify a numbering type for the entire list:
  - `a` specifies lowercase letters
  - `A` specifies uppercase letters
  - `i` specifies lowercase Roman numerals
  - `I` specifies uppercase Roman numerals
  - `1` specifies numbers(this is the default value)

Example with uppercase Roman numerals type:
```html
<ol type="I">
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
</ol>
```
Result:

![list-roman](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%20I.%20First%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%20II.%20Second%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%20III.%20Third%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

[View CodePen](https://codepen.io/enkidevs/pen/ajWoYZ)

Additionally, the `<ol>` element can be nested within itself any number of times. (more on this later in the workout)

**Best Uses:**
Ordered lists are best used for:
  - Steps for cooking in a recipe
  - Directions to the Apple store
  - Instruction manual
  - Other lists which have a meaningful/necessary order

---
## Practice

Complete the HTML code to create a numbered list.

```html
<A>
  <B>Buy Jam</B>
  <B>Open Jam</B>
  <B>Eat Jam</B>
</A>
```

A: ???
B: ???

* `ol`
* `li`
* `nl`
* `ul`
* `num`
* `order`
* `list`
* `numlist`

---
## Revision

What does this code create?


```html
<ol>
  <li>Item</li>
  <li>Item</li>
  <li>Item</li>
</ol>
```

???

* ordered list
* unordered list
* open list
* list item
* organic list
* online list

---
## Quiz

### How much do you know about ordered lists?

What is NOT a good example of an ordered list?

???

* Items to purchase at a grocery store
* Steps for cooking in a recipe
* Directions to the Apple store
* Sequence to launch a rocket
