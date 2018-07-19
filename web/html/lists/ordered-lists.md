---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

standards:
  web.markup-text.2: 10

links:
  - '[MDN docs for ordered lists]](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){website}'

---
# Ordered Lists
---
## Content

The HTML `<ol>`, or **The Ordered List element** is used to represent an ordered list of items. This is a list of items. This list is displayed as a block element usually rendered with preceding numbering; these can be numerals, letters, Roman numerals or even bullets. The items in the `<ol>` elements list are represented with the `<li>` element. Also, by default, each item in the list is indented with a 40px padding to the left.

The `<ol>` element has 4 attributes:
  - `compact`
  - `reversed`
  - `start`
  - `type`

The `reversed` attribute is of type boolean and is used to specify that the items in the list are in the reversed order.

The `start` attribute was deprecated in HTML4 but reintroduced back in HTML5. This attribute is used to specify which number/value the list starts counting. Even if your numbering type is set to letters or anything else different than a number you still have to set the value in numbers: `<ol start="5">`.

The `type` attribute is used to specify a numbering type for the entire list:
  - `a` specifies lowercase letters
  - `A` specifies uppercase letters
  - `i` specifies lowercase Roman numerals
  - `I` specifies uppercase Roman numerals
  - `1` specifies numbers(this is the default value)

Example with uppercase Roman numerals type:
```
<ol type="I">
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
</ol>
```
Result:
```
 I. First
 II. Second
 III. Third
```
The `compact` attribute is deprecated and for achieving the same effect you should use CSS styling.

Some CSS styling for the `<ol>` list element:
  - style="list-style-type:upper-roman"
  - style="list-style-type:lower-alpha"
  - style="list-style-type:decimal"
  - style="list-style-type:none"
  - more CSS styles in the 'more info' section of this insight


Example of a simple list:
```
<ol>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  ...
  <li>Item N</li>
</ol>
```
Result:
```
  1. Item 1
  2. Item 2
  3. Item 3
```

Additionally, the `<ol>` element can be nested with itself any number of times. When nested, each list section displays starting from either 1 or whatever the `start` attributes value is. Additionally, you can add a different style for each `<ol>` section in the nested list.


Example of a nested list(Some tags have an explanation):
```
<ol> Start First list
  <li>Item A</li>
  <li>Item B     
    <ol> Start sublist for item B
      <li>Item B1</li>
      <li>Item B2</li>
      <li>Item B3</li>
    </ol> Finish B sublist
  </li> Finish B item
  <li>Item C</li>
</ol>
```
**Note:**
	- The closing `</li>` tag for `Item B` is placed after all the sub-items/lists for that item are listed which is right before the start of the third item(`Item C`) in the first list.

The result of the above list with the notes:
```
  Start list
  1. Item A
  2. Item B
      Start sublist for item B
      1. Item B1
      2. Item B2
      3. Item B3
    Finish B sublist
    Finish B item
  3. Item C
```
The same result, this time how it looks without notes:
```
  1. Item A
  2. Item B
      1. Item B1
      2. Item B2       
      3. Item B3
  3. Item C
```

This element is best used for something like:
  - Steps for cooking in a recipe
  - Directions to the Apple store
  - Instruction manual
  - Other lists which have a meaningful/necessary order

---
## Practice

Complete the HTML code to create a numbered list.
```
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

```
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
