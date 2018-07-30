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
  - '[CodePen: Ordered List](https://codepen.io/enkidevs/pen/VBbZrW){code}'
  - '[CodePen: Unordered List](https://codepen.io/enkidevs/pen/pZPzdm){code}'
  - '[CodePen: Nested List](https://codepen.io/enkidevs/pen/xJdKpO){code}'
  - '[MDN docs for unordered lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul){website}'
  - '[Example on codepen.io](){website}'
  - '[MDN docs for ordered lists]](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'

---
# Nested Lists
---
## Content

The two most common lists in HTML are:

* Ordered Lists: `<ol>`
* Unordered Lists: `<ul>`

**Ordered List:**

```
<ol>
  <li>Do this first.</li>
  <li>This second.</li>
  <li>And this last.</li>
</ol>
```

![list-ol](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%201.%20Do%20this%20first.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%202.%20This%20second.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%203.%20And%20this%20last.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/VBbZrW)-->

**Unordered List:**

```
<ul>
  <li>Sleeping Bag</li>
  <li>Flashlight</li>
  <li>S'mores</li>
</ul>
```

![list-ul](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3E%20%E2%80%A2%20Item%20x%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2249%22%3E%20%E2%80%A2%20Item%20x%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%20%E2%80%A2%20Item%20x%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/pZPzdm)-->


**Nested List:**

Lists can be nested within other lists. This is an example of an unordered list within an ordered list:

```
<p> Instructions </p>
<ol>
  <li>Gather Ingredients:</li>
    <ul>
      <li>1 1/4 cup Nutella</li>
      <li>2 large eggs</li>
      <li>1/2 cup flour</li>
    </ul>
  <li>Mix Ingredients</li>
  <li>Bake 15 mins at 350F</li>
</ol>
```
Result:

![list-nested](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22174%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22174%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2217%22%20y%3D%2232%22%3EInstructions%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2217%22%20y%3D%2266%22%3E%201.%20Gather%20Ingredients%3A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%2283%22%3E%20%E2%97%A6%201%201%2F4%20cup%20Nutella%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22100%22%3E%20%E2%97%A6%202%20large%20eggs%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22117%22%3E%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2252.5625%22%20y%3D%22117%22%20font-size%3D%2214%22%3E%E2%97%A6%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2261.41504%22%20y%3D%22117%22%3E1%2F2%20cup%20flour%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22134%22%3E%202.%20Mix%20Ingredients%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2217%22%20y%3D%22151%22%3E%203.%20Bake%2015%20mins%20at%20350F%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/xJdKpO)-->

In the example above, the ordered list element `<ol>` is used as the main list because the steps should be followed in a specific order. The unordered list elements don't need to be gathered in any specific order, so this organization of lists makes the most sense.

---
## Practice

Complete the HTML code to create an unordered list within an ordered list.

```
<A>
  <B>Gather Ingredients:</B>
    <C>
      <B>1 1/4 cup Nutella</B>
      <B>2 large eggs</B>
      <B>1/2 cup flour</B>
    </C>
  <B>Mix Ingredients</B>
  <B>Bake 15 mins at 350F</B>
</A>
```

A: ???
B: ???
C: ???

* `ol`
* `li`
* `ul`
* `dl`
* `il`
* `bl`
* `ll`

---
## Revision

Which code block will create this nested list?

```
1. Gather Ingredients:
  * 1 1/4 cup Nutella
  * 2 large eggs
  * 1/2 cup flour
2. Mix Ingredients
3. Bake 15 mins at 350F
```

Option #1:

```
<ol>
  <li>Gather Ingredients:</li>
    <ul>
      <li>1 1/4 cup Nutella</li>
      <li>2 large eggs</li>
      <li>1/2 cup flour</li>
    </ul>
  <li>Mix Ingredients</li>
  <li>Bake 15 mins at 350F</li>
</ol>
```

Option #2:

```
<ol>
  <li>Gather Ingredients:</li>
  <li>
    <ul>
      <li>1 1/4 cup Nutella</li>
      <li>2 large eggs</li>
      <li>1/2 cup flour</li>
    </ul>
  </li>
  <li>Mix Ingredients</li>
  <li>Bake 15 mins at 350F</li>
</ol>
```

???

* Option #1
* Option #2

---
## Quiz

### How much do you know about nested HTML lists?


What does this code create?

```
<ol>
  <li>Gather Ingredients:</li>
    <ul>
      <li>1 1/4 cup Nutella</li>
      <li>2 large eggs</li>
      <li>1/2 cup flour</li>
    </ul>
  <li>Mix Ingredients</li>
  <li>Bake 15 mins at 350F</li>
</ol>
```

???

* bulleted list within a numbered list
* 6 items within a numbered list
* numbered list within a bulleted list
* ungrouped list within an organic list
