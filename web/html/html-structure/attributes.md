---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.syntax-html.1: 10

aspects:
  - introduction

---
# Attributes
---
## Content

In HTML, many elements allow for extra attributes, which allow for additional information to apply to that specific element. Attributes are placed in the opening tag and usually come in name/value pairs and the values are enclosed in quotation marks.

Example:
```
<img src="enki_logo.png">
```

In the example above the `src="enki_logo.png"` is an attribute for the `<img>` tag. Without that extra information, the `<img>` element wouldn't know what image to use within it.

The name/value pair refers in this case to 'src' and the value 
'enki_logo.png'. Notice how the value is wrapped in quote marks. 

---
## Practice

What are the two attributes of this code?
```
<p>
  This is a
  <a
   href="https://www.enkipro.com"
   target="_blank">link
  </a>
</p>
```

???

Attribute values should always be enclosed within what symbols?

???

* `href` and `target`
* Quotation marks
* `<p>` and `<a>`
* `href` and `<p>`
* `https://www.enkipro.com` and `_blank`
* Parenthesis
* Commas
* Periods

---
## Revision

HTML attributes are required to be placed where?

???

True or False? `Every HTML element requires an attribute.`

???

* Within the opening tag.
* False
* Within the closing tag.
* Between the opening and closing tags.
* Before the opening tag.
* True

---
## Quiz

### How much do you know about HTML attributes?

HTML attributes usually come in what format?

???

* pairs like: name="value"
* styles like: font-size
* values like: color="red"
* measurements like: pixels
* names like: labels="container"
