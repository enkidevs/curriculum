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
  - '[CodePen: Ordered Lists](https://codepen.io/enkidevs/pen/QBvLQo){code}'
  - '[CodePen: Ordered Lists Roman Numerals](https://codepen.io/enkidevs/pen/ajWoYZ){code}'
  - '[CodePen: Nested](https://codepen.io/enkidevs/pen/BPRBrO){code}'
  - '[MDN docs for ordered lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'
  - '[CSS list style type Property](https://www.w3schools.com/cssref/pr_list-style-type.asp){website}'


---
# Ordered Lists
---
## Content

The HTML `<ol>`, or the **Ordered List** element is used to represent an ordered list of items.

<ol>
  <li>Do this first.</li>
  <li>This second.</li>
  <li>And this last.</li>
</ol>

![list-ol](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%201.%20Do%20this%20first.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%202.%20This%20second.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%203.%20And%20this%20last.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/QBvLQo)-->

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
```
<ol type="I">
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
</ol>
```
Result:

![list-roman](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%20I.%20First%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%20II.%20Second%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%20III.%20Third%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/ajWoYZ)-->

**Reversed**

The `reversed` attribute is of type boolean and is used to specify that the items in the list are in the reversed order (3,2,1, or c,b,a).

**Start**

The `start` attribute was deprecated in HTML4 but reintroduced back in HTML5. This attribute is used to specify which number/value the list starts counting. No matter what numbering type is used, the starting value must be set as a number. `<ol start="3">` could be used to start the numbering at `3`, `c`, or even `III`.


Additionally, the `<ol>` element can be nested with itself any number of times. When nested, each list section displays starting from either 1 or whatever the `start` attributes value is. Additionally, you can add a different style for each `<ol>` section in the nested list.


Example of a nested list:
```
<ol>
  <li>Item A</li>
  <li>Item B     
    <ol>
      <li>Item B1</li>
      <li>Item B2</li>
      <li>Item B3</li>
    </ol>
  </li>
  <li>Item C</li>
</ol>
```

![list-ol-nested](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22139%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22139%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%201.%20Item%20A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%202.%20Item%20B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%201.%20Item%20B1%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2283%22%3E%202.%20Item%20B2%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22100%22%3E%203.%20Item%20B3%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22117%22%3E%203.%20Item%20C%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/BPRBrO)-->

**Note:**
	- The closing `</li>` tag for `Item B` must wrap around the entire nested list.  

**Best Uses:**
Ordered lists are best used for:
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
