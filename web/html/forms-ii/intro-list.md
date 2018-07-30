---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.6: 10
  web.html-forms.9: 10

aspects:
  - introduction
  - workout
  - deep
  - obscura

lists: 
  - '[CodePen: Form Datalist](https://codepen.io/enkidevs/pen/VBPKGp){code}' 

---
# Intro list
---
## Content

With the HTML input form `<list>` attribute and the `<datalist>` element you can specify a list of pre-defined options for the `<input>` element.

The `<datalist>` element is used to provide the `<input>` element with the `autocomplete` feature. This means that as the user is typing, he or she will get a drop-down list of pre-defined options.

The value of `<list>` must be the `id` of the `<datalist>` element within the same document.

Example:
```
<form
  action="file.php"
  method="get">
 <input
  list="fruits"
  name="snacks">
  <datalist id="fruits">
    <option
      value="apples">Apples
    </option>
    <option
      value="bananas">Bananas
    </option>
    <option
      value="oranges">Oranges
    </option>
  </datalist>
  <input type="submit">
</form>
```

![drop-down-intro-list](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20131%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22131%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2020.5h130v18h-130z%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20stroke%3D%22%23000%22%20d%3D%22M138.83685%2026.5l2.62516%204.87852L144.08717%2026.5h-5.25032z%22%2F%3E%3Crect%20width%3D%2251%22%20height%3D%2217%22%20x%3D%22155.5%22%20y%3D%2221.5%22%20fill%3D%22%23FFF%22%20stroke%3D%22%23D2D2D2%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%22161%22%20y%3D%2234%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%239CC1E8%22%20d%3D%22M20.5%2038.5h136v72h-136z%22%2F%3E%3Ctext%20fill%3D%22%23777%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2212%22%3E%3Ctspan%20x%3D%22110.30859%22%20y%3D%2256%22%3EApples%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2212.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2229%22%20y%3D%2257%22%3EApples%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2212.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2229%22%20y%3D%2281%22%3EBananas%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2212.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2229%22%20y%3D%22105%22%3EOranges%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23777%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2212%22%3E%3Ctspan%20x%3D%2299.62695%22%20y%3D%2280%22%3EBananas%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23777%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2212%22%3E%3Ctspan%20x%3D%22100.97461%22%20y%3D%22104%22%3EOranges%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/VBPKGp)-->

---
## Practice

Complete the code so that the input field displays a dropdown list.

```
<form
  action="file.php"
  method="get">
 <input [A]="fruits" [B]="snacks">
  <[C] [D]="fruits">
    <[E] value="apples">Apples</[E]>
    <[E] value="bananas">Bananas</[E]>
    <[E] value="oranges">Oranges</[E]>
  </[C]>
  <input type="submit">
</form>
```

`[A]`: ???
`[B]`: ???
`[C]`: ???
`[D]`: ???
`[E]`: ???

* list
* name
* datalist
* id
* option

---
## Revision

Which form attribute is used to connect pre-defined options of a datalist as an input dropdown?

```
<form
  action="file.php"
  method="get">
 <input
  ???="browsers" name="browser">
  <datalist id="browsers">
    <option value="Microsoft Edge">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Safari">
  </datalist>
  <input type="submit">
</form>
```

* list
* formlist
* datalistid
* options
* listoptions
* dataoptions
