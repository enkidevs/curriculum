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
  - '[HTML <ol> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){documentation}'

---
# Nested Lists
---
## Content

The two most common lists in HTML are:

* Ordered Lists: `<ol>`
* Unordered Lists: `<ul>`

**Ordered List:**

```html
<ol>
  <li>Do this first.</li>
  <li>This second.</li>
  <li>And this last.</li>
</ol>
```

![list-ol](https://img.enkipro.com/cf9b8346bcac3c93325df035ea93b26b.png)

[View CodePen](https://codepen.io/enkidevs/pen/VBbZrW)

**Unordered List:**

```html
<ul>
  <li>Sleeping Bag</li>
  <li>Flashlight</li>
  <li>S'mores</li>
</ul>
```

![list-ul](https://img.enkipro.com/87a289dc50d66e09fce9506b2ff4f676.png)

[View CodePen](https://codepen.io/enkidevs/pen/pZPzdm)


**Nested Lists:**

Lists can be nested within other lists. 

When nested, each list section displays starting from either 1 or whatever the `start` attributes value is. Additionally, you can add a different style for each `<ol>` section in the nested list.

Example of a nested `<ol>` list:
```html
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

![list-ol-nested](https://img.enkipro.com/26d4d08c20b3a7d7b68386a998bc72cb.png)

[View CodePen](https://codepen.io/enkidevs/pen/BPRBrO)

**Note:**
	- The closing `</li>` tag for `Item B` must wrap around the entire nested list.

This is an example of an unordered list within an ordered list:

```html
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

![list-nested](https://img.enkipro.com/b8755c181cd9bb24d977267b4e546f43.png)

[View CodePen](https://codepen.io/enkidevs/pen/xJdKpO)

In the example above, the ordered list element `<ol>` is used as the main list because the steps should be followed in a specific order. The unordered list elements don't need to be gathered in any specific order, so this organization of lists makes the most sense.

---
## Practice

Complete the HTML code to create an unordered list within an ordered list.

```html
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

```html
1. Gather Ingredients:
  * 1 1/4 cup Nutella
  * 2 large eggs
  * 1/2 cup flour
2. Mix Ingredients
3. Bake 15 mins at 350F
```

Option #1:

```html
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

```html
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

```html
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
