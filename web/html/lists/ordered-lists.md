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
  - '[HTML <ol> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){documentation}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){documentation}'

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
![list-ol](https://img.enkipro.com/e5cd8df572467937bf02dd58b3eadbb6.png)

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

![list-roman](https://img.enkipro.com/f389eda87981627f1bb83d9ff30d6a85.png)

[View CodePen](https://codepen.io/enkidevs/pen/ajWoYZ)

Additionally, the `<ol>` element can be nested within itself any number of times (more on this later in the workout).

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
