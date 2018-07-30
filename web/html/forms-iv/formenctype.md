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
  - '[CodePen: Form Enctype](https://codepen.io/enkidevs/pen/YvdRMb){code}'

---
# Enctype
---
## Content

The HTML `formenctype` input form attribute is used to specify how form-data should be encoded before it's sent to the server.
It is only used for buttons and images with `type="submit"`.

If the attribute is not set, the default value is set to `application/x-www-form-urlencoded`.  

When using `<input>` elements with the attribute `type="file"` it is necessary to set the value as `multipart/form-data`.  

Setting the value to `text/plain` converts every space to a `+`, but no character is encoded.  

Example:
```
<form
 action="/action_page.asp"
 method="post">
  Name:
   <input type="text"
    name="fname"
    value="Ståle Refsnes">
   <button type="submit">
    Submit with encoding
   </button>
   <button
    type="submit"
    formenctype="text/plain">
    Submit without encoding
   </button>
</form>
```

![form-enctype](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22100%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22100%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23D2D2D2%22%20d%3D%22M20.5%2037.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EName%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2225%22%20y%3D%2273%22%3ESubmit%20with%20encoding%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22158%22%20y%3D%2273%22%3ESubmit%20without%20encoding%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%22147%22%20height%3D%2217%22%20x%3D%22152.5%22%20y%3D%2260.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Crect%20width%3D%22128%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2260.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2252%22%3ESt%C3%A5le%20Refsnes%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/YvdRMb)-->

In the example above we have set all the spaces in the form to convert to a `+` with no character encoding.

---
## Practice

Which statement is true regarding `enctype`?

???

* Specifies how the form-data should be encoded when submitted to server.
* can be used only if `method="get"`.
* The values `application/x-www-form-urlencoded` and `text/plain` convert spaces into `-` symbols.

---
## Revision

Which input form attribute is used to specify an encoding type for your form?

???

* enctype
* form-data
* encode
* urlencoded
* form

---
## Quiz

### How much do you know about HTML input form attributes?

Which statement is not true regarding `enctype`?

* The values `application/x-www-form-urlencoded` and `text/plain` convert spaces into "-" symbols.
* specifies how the form-data should be encoded when submitted to server.
* The default value is `application/x-www-form-urlencoded`.
* The value `multipart/form-data` is required when using forms that have a file upload control.
