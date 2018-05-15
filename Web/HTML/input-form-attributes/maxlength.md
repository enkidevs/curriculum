---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input
  - https://www.w3schools.com/tags/att_input_maxlength.asp
  
---
# Maxlength
---
## Content

The HTML input form `maxlength` attribute is used to specify a maximum number of characters a user can enter in an `<input>` field.
This attribute works with several `<input>` types:
  - `email`
  - `password`
  - `search`
  - `tel`
  - `text`
  - `url`
  
Example:
```
<form 
  action="/action.php">
Input password:<br>
<input 
  type="text" 
  name="Password" 
  maxlength="12"><br>
  <input type="submit">
</form>

```

This attribute can also work for the `<textarea>` element.

Example:
```
<textarea 
  maxlength="50">
Input text here
</textarea>
```

Furthermore, this attribute does not provide feedback on its own. Meaning the user won't know how many characters are left as he is typing. To solve this, you would have to add some JavaScript code to your webpage.

However, if you do not wish to do so, you can simply add a label on top of or next to, your password field to indicate to the user what the maximum possible length is.

Example:
```
<form 
  action="/action.php">
Input password:<br>
<input 
  type="text" 
  name="Password" 
  maxlength="20">
  <label>
 Maximum 20 characters
</label><br>
  <input type="submit">
</form>
```

---
## Practice

Which statement is false in regards to the maxlength attribute?

???

* Text changes to red when max limit is hit by default.
* does not provide any feedback
* if feedback is needed, JS code is required.
* Can only be applied to `<input>` and `<textarea>`.
* Limits placeholder attribute length

---
## Revision

Which attributes is needed so a textfield only accepts five characters?

`<input type="text" name="zipcode" ???="5" >`

* maxlength
* size
* width
* charmax
* col








