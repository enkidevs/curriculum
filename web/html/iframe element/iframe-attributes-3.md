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
  - '[Origin](https://developer.mozilla.org/en-US/docs/Glossary/origin){documentation}'
  - '[MDN docs for iFrame](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe){website}'
  - '[Global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  - '[Pointer Lock API](https://developer.mozilla.org/en-US/docs/Web/API/Pointer_Lock_API){website}'
  
---
# Iframe
---
## Content

This insight will contain the following attributes:
  1. `sandbox`
  2. `srclong`

1) The `sandbox` attribute is new in HTML5 and is used to enable extra restrictions. This is done by either leaving an empty string(all restrictions applied) or with a list of tokens separated with a space.
 Tokens:
  - `allow-forms`
  - `allow-modals`
  - `allow-orientaion-lock`
  - `allow-pointer-lock`
  - `allow-popups`
  - `allow-popups-to-escape-sandbox`
  - `allow-presentation`
  - `allow-same-origin`
  - `allow-scripts`
  - `allow-top-navigation`
  - `allow-top-navigation-by-user-activity`
  
The `allow-forms` token is used to allow the `<iframe>` element to submit forms. If the `allow-forms` token is not present, not counting an empty string, the `<iframe>` element cannot submit forms.

The `allow-modals` token is used to allow the `<iframe>` element to open modal windows.

The `allow-orientation-lock` token is used to give the `<iframe>` element the ability to lock screen orientation.

The `allow-pointer-lock` token is used to allow the `<iframe>` element to use the `Pointer Lock API`.

The `allow-popups` token is used to allow popups. If the `allow-popups` token is not present, the functionality will fail.

The `allow-popups-to-escape-sandbox` token is used to allow sandboxed documents to open new windows without forcing sandbox flags upon it.

The `allow-presentation` token is used to allow the embedders the control over starting/stopping a presentation session.

The `allow-same-origin` token is used to allow the `<iframe>` elements content to be treated with the same origin. If the `allow-same-origin` token is not present, the `<iframe>` element's content is treated as from a different/unique origin.

The `allow-scripts` token is used to allow the `<iframe>` element to run scripts.

The `allow-top-navigation` token is used to allow the `<iframe>` element to load content into its parent element.

The `allow-top-navigation-by-user-activity` token is used to allow the `<iframe>` element to load content in its parent element, but only with a user gesture.

2) The `srcdoc` attribute is used to specify which content the `<iframe>` element will contain. Normally, this attribute is used together with the `sandbox` attribute. If the `srcdoc` attribute is not present, then the `src` attribute will be used, if present. On the other hand, if the `srcdoc` attribute is present, it will override an existing src attribute.


---
## Practice

Which `<iframe>` attribute is used to enable extra restrictions:

???

Which `<`iframe>` attribute is used to specify which content the `<iframe>` element will contain?

* `sandbox`
* `srcdoc`
* `restrictions`
* `restrict`
* `longdesc`
* `enable-restrictions`
* `rest`
* `scrolling`


---
## Revision

What is the easiest way to set all restrictions for the sandbox `<iframe>` attribute?

???

* by leaving an empty string
* by adding all restrictions separated with a dash
* by not adding the `sandbox` attribute at all
* by adding a "all-restrictions" string as the value
