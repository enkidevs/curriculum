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
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  
---
# Intro abbr
---
## Content

The HTML `<abbr>`, or **The Abbreviation element** is used to represent an abbreviation. The element has a `title` attribute which when used has to provide a full description of this abbreviation and nothing else.

The `<abbr>` element has no other element-specific attributes but it does support global attributes.

**To learn more about global attributes visit the `more info` section at the bottom of this insight.**

As for the `title` attribute, when it's present it has to have a full description of the abbreviation because it provides important semantic meaning when used with the `<abbr>` element.

The content of the title is often shown in a tooltip when a user hovers over the element.  Also, some browsers add a dotted underline to the content of the element. 

Example:
```
<p>
  Learn all about 
  <abbr 
    title="HyperText Markup Language">
    HTML
  </abbr> 
  using Enki.
</p>
```
Result:
Learn all about `HTML` using Enki

By default, the `<abbr>` element is displayed as an inline element. 

Furthermore, the `<abbr>` element can be used together with the `<dfn>` element to create definitions for terms that are abbreviations.(examples in `<dfn>` insight)

Also, the element can be used together with the `title` attribute to provide definitions for abbreviations which are unfamiliar to the user.

The `<abbr>` element can also be styled with appropriate CSS properties.

Example without the title attribute:
```
<p>
  Learn all about 
  <abbr>HTML</abbr> 
  using Enki.
</p>
```
Result:
Learn all about `HTML` using Enki

---
## Practice

Write the code that provides a full description of the abbreviation for search engines and visually impaired software.

`<p>`Learn all about <??? ???=???>HTML</???> using Enki.`</p>`

* abbr
* title
* "HyperText Markup Language"
* /abbr
* "HyperText Markup Language"
* desc

---
## Revision

Which HTML element is used with abbreviations to provide a full description for search engines and visually impaired software?

???

* abbr
* acronym
* abbrev
* abbreviate
* acro
* desc

---
## Quiz

### How much do you know about the `<abbr>` element?

Mark the false statement regarding the `<abbr>` element: 

??

* Displayed as a block element by default.
* Represents an abbreviation
* Optionally provides a full description of the content.
* Some browsers present the description as a tooltip.
* Displayed as an inline element by default.
* Some browsers add a dotted underline to the content of the element. 



