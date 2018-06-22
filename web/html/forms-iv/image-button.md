---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10
  web.embed-media.0: 10

aspects:
  - introduction
  - workout
  - obscura

links:
  - '[MDN docs for image buttons](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image){website}'
  - '[MDN docs for Replaced Element](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element){website}'

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

This element is a replaced element,which means an element whose content isn't directly managed by CSS layer. Also, this element works just like the `<img>` element, however, it has the capabilities of the submit button.

If you want to know more about replaced elements, visit the `more info` section at the bottom of this insight.


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



Example with big play button image:
```
<input
  id="image" type="image"
  alt="Black Play button image"
  src="playbutton-image.jpeg">
```
Result
![Play logo](%3Csvg%20id%3D%22Layer_1%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20x%3D%220px%22%20y%3D%220px%22%20viewBox%3D%220%200%20459%20459%22%20style%3D%22enable-background%3Anew%200%200%20459%20459%3B%22%3E%3Cg%3E%3Cg%3E%3Cpath%20d%3D%22M229.5%2C0C102.751%2C0%2C0%2C102.751%2C0%2C229.5S102.751%2C459%2C229.5%2C459S459%2C356.249%2C459%2C229.5S356.249%2C0%2C229.5%2C0z%20M310.292%2C239.651%0D%0A%09%09%09l-111.764%2C76.084c-3.761%2C2.56-8.63%2C2.831-12.652%2C0.704c-4.022-2.128-6.538-6.305-6.538-10.855V153.416%0D%0A%09%09%09c0-4.55%2C2.516-8.727%2C6.538-10.855c4.022-2.127%2C8.891-1.857%2C12.652%2C0.704l111.764%2C76.084c3.359%2C2.287%2C5.37%2C6.087%2C5.37%2C10.151%0D%0A%09%09%09C315.662%2C233.564%2C313.652%2C237.364%2C310.292%2C239.651z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)



---
## Practice

Write the form code that creates an image button.

`<??? ???="???" ???="button.png" alt="Send" >`

* input
* type
* image
* src
* alt
* name
* submit

---
## Revision

What code is used to replace a form's submit button with an image?

???

* `<input type="image" src="button.png" >`
* `<img type="submit" src="button.png" >`
* `<input type="submit" src="button.png" >`
* `<img type="image" src="button.png" >`


---
## Quiz

### How much do you know about image buttons?

Which attribute is not a valid image button attribute for overriding default form behaviors?

* formoverride
* formaction
* formmethod
* formnovalidate
* formtarget
* formenctype
