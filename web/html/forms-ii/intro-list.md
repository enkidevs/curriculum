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

---
# Intro list
---
## Content

With the HTML input form `<list>` attribute and the `<datalist>` element you can specify a list of pre-defined options for the `<input>` element.
The `<datalist>` element is used to provide the `<input>` element with the `autocomplete` feature. This means that as the user is typing he or she will get a drop-down list of pre-defined options.

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
