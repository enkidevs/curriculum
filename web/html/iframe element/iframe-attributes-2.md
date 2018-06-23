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
  - '[Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API){website}'
  - '[Referrer](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referer){website}'
  - '[Pointer Lock API](https://developer.mozilla.org/en-US/docs/Web/API/Pointer_Lock_API){website}'
  
---
# Iframe
---
## Content

The `<iframe>` element has many element-specific attributes. We will mention the deprecated/obsolete ones because you might run into some while looking at older websites. Nevertheless, you should never use obsolete attributes when writing new content, and should also remove them from older content.

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
    
Also, the `<iframe>` element supports global attributes. To learn more about `global attributes` check the `more info` section at the bottom of this insight.
  
Non-deprecated attributes explained:

1. The `allowfullscreen` attribute is used to allow an `<iframe>` element to be full screen. This is done by setting the attribute to `true`. When set to true, the attribute calls its `requestFullscreen()` method. On the other hand, if the attribute is not present, the `<iframe>` element cannot go full screen.

2. The `allowpaymentrequest` is used to allow an `<iframe>` element to invoke the `Payment Request API`. When the attribute is set to `true` the `<iframe>` element of one origin will have access to selected resources from a server of a different origin. (more about `Payment Request API` in the more info section at the bottom of this insight)

3. The `height` attribute is used to set the height of the `<iframe>` element. The height is measured in CSS pixels. **Note: Before HTML5 the value of the `height` attribute could've been either in pixels or percentages. Now only in pixels.**

4. The `name` attribute is used to give the `<iframe>` element a name. The value of the `name` attribute can be used as the value of the `target` and `formtarget` attributes for any element using them; like the `<a>`, `<base>`, `<form>`, `<input>` or `<button>` element.

5. The `referrerpolicy` attribute is used to indicate which referrer to use for fetching resources. This attribute is of type `String` and has 5 possible values.
  - `no-referrer` states that the `Referer` header will not be sent.
  - `no-referrer-when-downgrade` states that no `Referrer:` header will be sent when browsing an origin without HTTPS. Also, if no policy is specified, this will be the default value.
  - `origin` states the `Referrer` to be the origin of the page.
  - `origin-when-cross-origin` limits navigation from one origin to another to the host, port, and scheme. On the other hand, if navigating to the same origin it will also include the referrer's path.
  - `unsafe-url` states origin and path are included, but not the fragment, password or username.
  
6. The `sandbox` attribute is new in HTML5 and is used to enable extra restrictions. This is done by either leaving an empty string(all restrictions applied) or with a list of tokens separated with a space.
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

7. The `src` attribute value is the URL of the embedded page. You can also use `about:blank` to embed an empty page.

8. The `srcdoc` attribute is used to specify which content the `<iframe>` element will contain. Normally, this attribute is used together with the `sandbox` attribute. If the `srcdoc` attribute is not present, then the `src` attribute will be used, if present. On the other hand, if the `srcdoc` attribute is present, it will override an existing src attribute.

9. The `width` attribute is used to set the width of the `<iframe>` element. The width is measured in CSS pixels. **Note: Before HTML5 the value of the `width` attribute could've been either in pixels or percentages. Now only in pixels.**

---
## Practice

Identify the attribute that is not obsolete:

???

* `src`
* `align`
* `frameborder`
* `longdesc`
* `marginheight`
* `marginwidth`
* `scrolling`


---
## Revision

Which `<iframe>` attribute is used to enable extra restrictions?

???

How do you set the width and height of an `<iframe>` element?

???

Which `<iframe>` elements attribute value can bb used as a value for `target` or `formtarget` attributes to target the `<iframe>` element?

???

* `sandbox`
* with the `width` and `height` attributes
* `name`
* `height`
* `src`
* `align`
* `frameborder`
* `marginheight`
* `marginwidth`
* by applying the CSS height and with properties
* using JavaScript
