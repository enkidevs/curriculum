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
  - '[Example on codepen.io](){website}'
  - '[MDN docs for ordered lists]](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}'
  
---
# Nested Lists
---
## Content

In HTML the `<ol>` and `<ul>` elements are used to create ordered and unordered lists. Even though each element can be nested with itself, they can also nest with each other.

Example of a simple nested list: 
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
```
  Instructions
1. Gather Ingredients:
  * 1 1/4 cup Nutella
  * 2 large eggs
  * 1/2 cup flour
2. Mix Ingredients
3. Bake 15 mins at 350F
```

In the example above, the ordered list element `<ol>` is used as the main list because items inside it have a specific order. On the other hand, the unordered list elements items have no specific order and can be executed in any way.  



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
