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
  - '[CodePen: Address Element](https://codepen.io/enkidevs/pen/OEoaVN){code}'
  - '[MDN docs for address](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/address){website}'

---
# Address
---
## Content

The HTML `<address>` element is used to provide contact information about the author. This element is displayed as a block element and has a default styling like the `<i>` and `<em>` elements (the text is italic).

![address](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-ItalicMT%2C%20Arial%22%20font-size%3D%2216%22%20font-style%3D%22italic%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3E1107%20Pearl%20Street%2C%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2249%22%3EBoulder%2C%20Colorado%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2266%22%3E80302%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

This element can contain different types of content:
  - Physical address
  - URL
  - E-mail address
  - Phone number
  - Geographical coordinates
  - And more...

The content of the `<address>` element should include the name of the person, people, or organization to which the contact information refers.

Address Example:
```html
<address>
  Authors Email:
  <a href="http://www.web.com/contact">
    www.web.com/contact
  </a>.<br>
  Author address:<br>
  Company name<br>
  Some Street address<br>
  City, State<br>
  Country
</address>
```

<!--[View CodePen](https://codepen.io/enkidevs/pen/OEoaVN)-->

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
