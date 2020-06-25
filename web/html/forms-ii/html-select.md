---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:

---
# The `<select>` Element
---
## Content

In HTML the `<select>` element is used to create drop-down lists.
The available options in the `<select>` list are created with the `<option>` tag.

Example:
```html
<form>
  <select>
    <option value="apple">Apples</option>
    <option value="banana">Bananas</option>
    <option value="orange">Oranges</option>
    <option value="plum">Plums</option>
    <option value="lemon">Lemons</option>
  </select>
</form>
```

![drop-down-select](https://img.enkipro.com/a1f15c923f25db95a3c1f8ed34f41832.png)

[View CodePen](https://codepen.io/enkidevs/pen/oMBzMz)

You can also add several other attributes to your drop-down list.

Some of these are:
 - autofocus
 - disabled
 - multiple
 - name
 - required
 - size

It is also possible to define groups of related options from a drop-down list within a `select` element.

This is done by adding an `<optgroup>` attribute, like so:

Example:
```html
<select>
  <optgroup label="Fav Fruit">
    <option value="apple">Apples</option>
    <option value="banana">Bananas</option>
    <option value="orange">Oranges</option>
  </optgroup>
  <optgroup label="Fav Veggie">
    <option value="carrot">Carrots</option>
    <option value="cucumber">
      Cucumbers
    </option>
    <option value="onion">Onions</option>
  </optgroup>
</select>
```

![drop-down-optgroup](https://img.enkipro.com/ac1efd78e93c3454005516c0d0b63362.png)

[View CodePen](https://codepen.io/enkidevs/pen/NBdRBB)

---
## Practice

Which form attribute is used to define items of a drop-down list within a `select` element?
```html
<select>
  <__ value="apple">Apples</__>
  <__ value="banana">Bananas</__>
  <__ value="orange">Oranges</__>
</select>
```
???

* `option`
* `optgroup`
* `selectitem`
* `menuitem`

---
## Revision

Which form attribute is used to define groups of related option of a drop-down list within a select element?
```html
<select>
 <__ label="Fav Fruit">
   <option
     value="apple">Apples
   </option>
   <option
     value="banana">Bananas
   </option>
 </__>
 <__ label="Fav Veggie">
  <option
   value=”carrot">Carrot
  </option>
  <option
   value="broccoli">Broccoli
  </option>
 </__>
</select>
```
???

* `optgroup`
* `option`
* `selectitem`
* `menuitem`
---
## Quiz

### How much do you know about the html `select` element?

Which statement is true regarding drop-down lists in HTML?

???

 * The `<select>` element is used to create drop-down lists.
 * The `<option>` element is used to create drop-down lists.
 * The `<optgroup>` element is used to create drop-down lists.
 * The `<list>` element is used to create drop-down lists.
