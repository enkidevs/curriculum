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
  
---
# Iframe
---
## Content

This insight will contain the following attributes:
  1. `allowfullscreen`
  2. `allowpaymentrequest`
  3. `referrerpolicy`

1) The `allowfullscreen` attribute is used to allow an `<iframe>` element to be full screen. This is done by setting the attribute to `true`. When set to true, the attribute calls its `requestFullscreen()` method. On the other hand, if the attribute is not present, the `<iframe>` element cannot go full screen.

2) The `allowpaymentrequest` is used to allow an `<iframe>` element to invoke the `Payment Request API`. When the attribute is set to `true` the `<iframe>` element of one origin will have access to selected resources from a server of a different origin. (more about `Payment Request API` in the more info section at the bottom of this insight)

3) The `referrerpolicy` attribute is used to indicate which referrer to use for fetching resources. This attribute is of type `String` and has 5 possible values.
  - `no-referrer` states that the `Referer` header will not be sent.
  - `no-referrer-when-downgrade` states that no `Referrer:` header will be sent when browsing an origin without HTTPS. Also, if no policy is specified, this will be the default value.
  - `origin` states the `Referrer` to be the origin of the page.
  - `origin-when-cross-origin` limits navigation from one origin to another to the host, port, and scheme. On the other hand, if navigating to the same origin it will also include the referrer's path.
  - `unsafe-url` states origin and path are included, but not the fragment, password or username.
  

---
## Practice

Match the text with the attribute:

The `allowfullscreen`: ???
The `allowpaymentrequest`: ???
The `referrerpolicy`: ???

* attribute is used to allow an `<iframe>` element to be full screen.
* attribute is used to allow an `<iframe>` element to invoke the `Payment Request API`.
* attribute is used to indicate which referrer to use for fetching resources.

---
## Revision

Which of these is not a valid value for the `referrerpolicy` `<iframe>` attribute?

???

If no policy is specified, which of these `referrerpolicy` values is used as the default value?

???

* `referrer-safe`
* `no-referrer-when-downgrade`
* `unsafe-url`
* `origin-when-cross-origin`
* `origin`
* `no-referrer` 
