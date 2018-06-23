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
  - '[MDN docs for iFrame](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe){website}'
  
---
# Iframe
---
## Content

The `<iframe>` element has many element-specific attributes. We will mention the deprecated/obsolete ones because you might run into some whilst looking at older websites. Nevertheless, you should never use obsolete attributes when writing new content, and should also remove them from older content.

Non-deprecated element-specific attributes:
  1. `allowfullscreen`
  2. `allowpaymentrequest`
  3. `height`
  4. `name`
  5. `referrerpolicy`
  6. `sandbox`
  7. `src`
  8. `srcdoc`
  9. `width`

Deprecated/obsolete attribbutes:
  1. `align`
  2. `frameborder`
  3. `longdesc`
  4. `marginheight`
  5. `marginwidth`
  6. `scrolling`
    
Also, the `<iframe>` element support global attributes. To learn more about `global attributes` check the `more info` section at the bottom of this insight.
  
Here are the most used ones today. All other will be in the next insight:
Most used:
 1. `height`
 2. `name`
 3. `src`
 4. `width`

1. The `height` attribute is used to set the height of the `<iframe>` element. The height is measured in CSS pixels. **Note: Before HTML5 the value of the `height` attribute could've been either in pixels or percentages. Now only in pixels.**

2. The `name` attribute is used to give the `<iframe>` element a name. The value of the `name` attribute can be used as the value of the `target` and `formtarget` attributes for any element using them; like the `<a>`, `<base>`, `<form>`, `<input>` or `<button>` element.

3. The `src` attribute value is the URL of the embedded page. You can also use `about:blank` to embed an empty page.

4. The `width` attribute is used to set the width of the `<iframe>` element. The width is measured in CSS pixels. **Note: Before HTML5 the value of the `width` attribute could've been either in pixels or percentages. Now only in pixels.**


---
## Practice

Identify the deprecated attribute:

???

* `align`
* `height`
* `name`
* `src`
* `width`

---
## Revision

Match the categories:

Non-deprecated attributes: ???
Deprecated/obsolete attributes: ???

* `height`, `name`, `src`, `width`
* `align`, `frameborder`, `marginheight`, `marginwidth`
