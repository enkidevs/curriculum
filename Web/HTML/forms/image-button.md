---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - workout

links:
  - '[MDN docs for image buttons](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image){website}'
  - 

---
# Image Button
---
## Content

The HTML input form of type `image` is used to create a submit button with a graphical image instead of text.

Example:
```
<input 
  type="image" 
  src="https://enkidevs.github.io/svgomg/" 
  alt="play">
```

**Note: The input type `image` element doesn't accept `value` attributes. You must specify a path to the image with the `src` attribute.**

This element is a replaced element,'[MDN docs for Replaced Element](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element)', which means an element whose content isn't directly managed by CSS layer. Also, this element works just like the `<img>` element, however, it has the capabilities of the submit button. 

Image button attributes:
  - src
  - alt
  - width
  - height
  
  
Example with attributes:
```
<input 
  id="image" type="image" 
  width="150" height="50" 
  alt="Play button image"
  src="playbutton.png">
```

In the example above, we have set the `width` and `height` properties, in pixels, of our button to `150` and `50`, the `id` of the input to `image` and the type of input is also `image`, the `alt` property describing what the image button is `play button image` and last but not least, the link path to the button image is set with the `src` attribute.


Image button attributes for overriding default form behaviors:
  - formaction
  - formmethod
  - formnovalidate
  - formtarget
  - formenctype

The `formaction` attribute specifies where to send the form-data when the form is submitted.
The `formmethod` specifies a method, either `get` or `post`, that the browser uses to submit a form.
The `formnovalidate` specifies that the form should not be validated upon submission.
The `formtarget` specifies where the response is displayed once the form is submitted. It can be:
  - `_self` same window
  - `_blank` new window
  - `_parent` open in parent browsing content, if no parent, same as `_self`
  - `_top` open in the top-level browsing content, if no top level, same as `_self`
  

---------------->ADD EXAMPLE WITH IMAGE HERE<-------------

---
## Practice

Write the form code that creates an image button.

`<??? ???="???" ???="button.png" ???="Send" />`

* input
* type
* image
* src
* alt
* name
* submit

---
## Revision

What code is used to replace an image with a form's submit button?

???
    
* `<input type="image" src="button.png" />`
* `<img type="submit" src="button.png" />`
* `<input type="submit" src="button.png" />`
* `<img type="image" src="button.png" />`




