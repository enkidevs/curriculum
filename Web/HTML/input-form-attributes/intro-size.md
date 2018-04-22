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
  - https://www.w3schools.com/tags/att_input_size.asp
---
# Intro size
---
## Content

The HTML input form `size` attribute is used to define the initial size of an input control. This value is usually specified in pixels unless the input type equals `type="text"` or `type="password"`, in that case, it is an integer number of characters.


Since HTML5 this attribute works only for these input attribute types:
  - email
  - password
  - search
  - tel
  - text
  - url
  
The value of the `size` attribute must be greater than 0. If however, you do not specify the size, the default value used is 20.

Example:
```
<input 
  type="text" 
  name="twitter" 
  size="280">
```

**Note: Setting the `size` attribute is not the same as setting the maximum length. Setting the `size` attribute sets the visible width, in characters, of an input element. If you wish to set the maximum length use the `maxlength` attribute. **
  
---
## Practice

Which attributes is needed so a textfield displays a field with an average of 280 characters?

`<input type="text" name="twitter" ???="280" >`

* size
* maxlength
* width
* length
* charmax
* col

---
## Revision

What attribute sets the width of a form’s input field in a measurement of average characters?

???
 
 * size
 * width
 * length
 * maxlength
 * col
 * charsize
 
 
    
    
