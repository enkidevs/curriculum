---
author: catalin

levels:

  - medium

type: normal

category: must-know

aspects:
  - workout
  - deep

links:

  - '[The Required Selector](https://css-tricks.com/almanac/selectors/r/required/){website}'
  - '[MDN Docs on Pseudo Classes](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes){documentation}'


---

# `:required` and `:optional` pseudo classes

---
## Content

Especially when creating a form, some fields in it are mandatory for user to complete.

All modern browsers support the `:required` and `:optional` pseudo classes:

```css
:required {
  border: 2px solid red;
}

:optional {
  border: 2px solid blue;
}

```
An example of a form they can be applied on:

```html
<form>
  <label>Name:</label>
  <input type="text"/>
  <br />
  <label>Username:</label>
  <input type="text" required/>
  <br/>
  <input type="submit"
              value="Submit">
</form>
```

`:required` and :`optional` can be chained together with other pseudo class selectors:
```css
input:required:focus {
  border: 1px solid pink;
  outline: none;
}

```

*Note*: Any element that doesn't have the `required` attribute is considered `optional`.

---
## Revision

What does the following CSS code do? ???
```css
:required {
   border: 2px solid black;
}
:optional {
   border: 2px dotted blue;
}
```

* Sets the border of compulsory fields solid and black. Sets the border of optional fields dotted and blue.
* Sets the border of compulsory fields dotted and blue. Sets the border of optional fields solid and black.
* Returns an error.
* Makes the border of all fields solid and black.
* Makes the border of all fields dotted and blue.
