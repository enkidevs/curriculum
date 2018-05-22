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
    value="Ståle Refsnes"><br>
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
