# Nested Lists
author: matthew-leach

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

---
## Content

New content to go here. The author must be updated to match a valid Enki account.

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

* ol
* li
* ul
* dl
* il
* bl
* ll

When an unordered list is nested within an ordered list, what happens to the default black discs?

* changed to hollow circles
* still display as black discs
* are overridden and display as ordered list items
* changed to black square
* it is not valid to nest unordered lists within ordered lists

---
## Revision

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

---
## Quiz

Which code block will create this nested list?

```
1. Gather Ingredients:
  * 1 1/4 cup Nutella
  * 2 large eggs
  * 1/2 cup flour
2. Mix Ingredients
3. Bake 15 mins at 350F
```

???

* Option #1
* Option #2

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
