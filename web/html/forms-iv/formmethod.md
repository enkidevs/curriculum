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
  - '[CodePen: Form Method](https://codepen.io/enkidevs/pen/QxzJXd){code}'

---
# Form Method
---
## Content

In HTML the `formmethod` form input attribute is used to specify which HTTP method will be used when sending the form-data.

If the `formmethod` attribute is specified it will override the `method` attribute. It can be used with `type="submit"` and `type="image"` attributes.

There are two possible values for the `formmethod` attribute.
 - `method="get"`
 - `method="post"`

The `method="get"` appends form data to the URL when submitted.
The method is useful for when the user wants to bookmark the result.
It is not good to use the `method="get"` for password sensitive information. If passed with this method, the information will be visible in the browsers address bar.

The `method="post"` does not append to the URL, but rather sends the form data as an HTTP post transaction.

Example:
```
<form
  action="/action.php"
   method="get">
  Full name:
   <input type="text"
     name="fname">
  <input
    type="submit" value="Submit">
  <input
    type="submit" formmethod="post"
    value="Submit using POST">
</form>
```

![form-formmethod](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22122%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22122%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFull%20Name%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2039.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2277%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2226%22%20y%3D%2298%22%3ESubmit%20using%20POST%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%22122%22%20height%3D%2217%22%20x%3D%2219.5%22%20y%3D%2285.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Crect%20width%3D%2253%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2264.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/QxzJXd)-->

---
## Practice

Match the possible values with their description related to the method attribute.

```
<form
  action="file1.php" method="get">
</form>
<form
  action="file2.php" method="post">
</form>
```

get : ???
post : ???


* Form data is appended to the URL when submitted.
* Form data is not appended to the URL.

---
## Revision

Which input form attribute specifies the HTTP method to use when the form is submitted?

???

* method
* http
* submit
* data
* get/post

---
## Quiz

### How much do you know about HTML input form attributes?

Which statement is not true regarding the `formmethod` attribute?

* It can only be used with the `type="submit"` attribute
* It can be used with `type"submit"` and `type"image"` attributes.
* The `method="get"` appends form data to the URL when submitted.
* The `method="post"` does not append to the URL, but rather sends the form data as an HTTP post transaction.
