---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

standards:
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN docs for address](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/address){website}'

---
# Address
---
## Content

The HTML `<address>` element is used to provide contact information about the author. This element is displayed as a block element and has a default styling like the `<i>` and `<em>` elements.

This element can contain different types of content:
  - Physical address
  - Url
  - E-mail address
  - Phone number
  - Geographical coordinates
  - And more...

The content of the `<address>` element should include the name of the person, people or organization to which the contact information refers.

Example:
```
<address>
  Authors Email:
  <a href="http://www.website.com/contact">
    www.website.com
  </a>.<br>
  Author address:<br>
  Company name<br>
  Some Street address<br>
  City, State<br>
  Country
</address>
```

Beside representing contact information about the author of the document, the `<address>` element can be used with different types of context. When placed within a `<body>` element it represents information about the document. When placed within an `<article>` element it represents information about an article.

On the other hand, if you want to represent an arbitrary address (such as postal addresses), which are not related to the contact information, you should use the `<p>` element rather than the `<address>` element.

---
## Practice

Which statement about the `<address>` element is not correct?

???

* Best for postal addresses
* Contact information of author
* When placed in `<body>` represents information for the document
* When placed in `<article>` represents information for that article
* Displayed as block element
* Default font-style is italic


---
## Revision

Which HTML element is used to contain contact information for its nearest `<article>` or `<body>` that is not related to the primary contact information of the site?

???

* `<address>`
* `<contact>`
* `<info>`
* `<postal>`
* `<authorship>`
