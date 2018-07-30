---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10

aspects:
  - workout
  - deep
  - obscura

links:
  - '[CodePen: Form Formaction](https://codepen.io/enkidevs/pen/MXZzzo){code}'
  - '[W3S docs for formaction](https://www.w3schools.com/tags/att_formaction.asp){documentation}'

---
# Formaction
---
## Content

The HTML form input attribute `formaction` is used to specify the form-data when a form is submitted by the input element. This submit has to be either a button or an image.

If the `formaction` attribute is specified, it will override the forms `action` attribute.

Example:
```
<form action="page1.php"
    method="get">
  Name: <input type="text"
    name="name">
  <button type="submit">
    Submit to Page 1
  </button>
  <button type="submit"
    formaction="page2.php">
    Submit to Page 2
  </button>
</form>
```

![form-formaction](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22122%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22122%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EName%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2039.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2277%22%3ESubmit%20with%20encoding%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2226%22%20y%3D%2298%22%3ESubmit%20without%20encoding%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%22149%22%20height%3D%2217%22%20x%3D%2219.5%22%20y%3D%2285.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2225%22%20y%3D%2253%22%3ESt%C3%A5le%20Refsnes%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%22133%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2264.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/MXZzzo)-->

---
## Practice

Complete the code so that the second button links properly to the action_page2.php file.

```
<form action="page1.php"
    method="get">
  Name: <input type="text"
    name="name">
  <button type="submit">
    Submit
  </button>
  <button type="submit"
    ???="page2.php">
    Submit to Page2
  </button>
</form>
```


* formaction
* form
* action
* submit
* form-data
* formpath

---
## Revision

Which input form attribute is used with the submit button when multiple buttons are used to help determine the location for the sent data?

???

* formaction
* form
* action
* submit
* form-data
* formpath

---
## Quiz

### How much do you know about the `formaction` html input form attribute?

Which statement regarding the formaction attribute is true?

* The `formaction` attribute overriders the forms `action` attribute.
* The `formaction` attribute doesn't work when the `action` attribute is present
* The `formaction` doesn't work with images.
* The `formaction` doesn't work with buttons.
