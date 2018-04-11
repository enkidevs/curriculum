# Placeholder
author: matthewleach

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep


---
## Content


The HTML input form attribute `placeholder` is used to display a short hint that describes the expected value for the selected input field.
It is displayed in the input field until the user enters a value.

The placeholder attribute works for several input types:
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

Example:
```
<form 
  action="/action.php">
  <input 
    type="text" name="full-name"
     placeholder="Full name"><br>
  <input 
    type="submit" 
    value="Submit">
</form> 
```

---
## Practice

Which statements are true regarding placeholder?

???
???

* Provides a short hint within the input.
* Works with the following input types: text, search, & email
* Numbers are not accepted as a placeholder.
* Does not work with the following input types: url, tel, & password

---
## Revision

Which form attribute shares a short hint that describes the expected value of an input field and will be overwritten by their input?

```
<input 
  type="text" name="fname"
  ???="Full name">
```

* placeholder
* hint
* sample
* tip
* note
