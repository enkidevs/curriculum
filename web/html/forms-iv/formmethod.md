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
# Method
---
## Content

In HTML the `formmethod` form input attribute is used to specify which HTTP method will be used when sending the form-data.

If the `formmethod` attribute is specified it will override the `method` attribute.
It can be used with `type"submit"` and `type"image"` attributes.

There are two possible values for the `formmethod` attribute.
 - `method="get"`
 - `method="post"`

The `method="get"` appends form data to the URL when submitted.
The method is useful for when the user wants to bookmark the result.
It is not good to use the `method="get"` to pass sensitive information. If passed with this method the information will be visible in the browsers address bar.

The `method="post"` does not append to the URL, but rather sends the form data as an HTTP post transaction.


Example:
```
<form
  action="/action.php"
   method="get">
  Full name:
   <input type="text"
     name="fname"><br>
  <input
    type="submit" value="Submit">
  <input
    type="submit" formmethod="post"
    value="Submit using POST">
</form>
```


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
