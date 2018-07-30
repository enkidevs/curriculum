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
  - '[CodePen: Element abbr](https://codepen.io/enkidevs/pen/rrjOGv){code}'
  - '[CodePen: Element abbr Styled](https://codepen.io/enkidevs/pen/rKQEEK){code}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  
---
# Intro abbr
---
## Content

The HTML `<abbr>`, or the **Abbreviation** element, is used to represent an abbreviation. The element has a `title` attribute which can provide a full description of the abbreviation and nothing else.

The content of the title is often shown in a tooltip when a user hovers over the element.  Also, some browsers add a dotted underline to the content of the element. 

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

![element-abbr](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2256%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2256%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3ELearn%20all%20about%20HTML%20using%20Enki.%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23000%22%20stroke-dasharray%3D%221%202%22%20stroke-linecap%3D%22square%22%20d%3D%22M129.5%2036.5h45%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View Codepen](https://codepen.io/enkidevs/pen/rrjOGv)-->

By default, the `<abbr>` element is displayed as an inline element. 

The `<abbr>` element can also be styled with appropriate CSS properties.

![element-abbr-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%2256%22%3E%3Cdefs%3E%3Cpath%20id%3D%22a%22%20d%3D%22M0%200h18v18H0z%22%2F%3E%3Cpath%20id%3D%22c%22%20d%3D%22M0%200h18v18H0z%22%2F%3E%3Cpath%20id%3D%22e%22%20d%3D%22M0%200h18v18H0z%22%2F%3E%3Cpath%20id%3D%22g%22%20d%3D%22M0%200h18v18H0z%22%2F%3E%3Cpath%20id%3D%22i%22%20d%3D%22M0%200h18v18H0z%22%2F%3E%3Cpath%20id%3D%22k%22%20d%3D%22M0%200h18v18H0z%22%2F%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2256%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20stroke%3D%22%23E37C00%22%20stroke-dasharray%3D%221%202%22%20stroke-linecap%3D%22square%22%20d%3D%22M129.5%2036.5h45%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%20fill%3D%22%23000%22%3ELearn%20all%20about%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22129.23438%22%20y%3D%2234%22%20fill%3D%22%23E37C00%22%3EHTML%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22172.53906%22%20y%3D%2234%22%20fill%3D%22%23000%22%3E%20using%20Enki.%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20transform%3D%22translate%28155%2028%29%22%3E%3Cmask%20id%3D%22b%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23a%22%2F%3E%3C%2Fmask%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22nonzero%22%20d%3D%22M6.3%202.9c.6-.4%201.7-.8%202.7-.8%201.5%200%202.3.5%203%201.2.7.7%201%201.4%201%202.4%200%20.9-.3%201.3-.6%201.8-.2.3-.6.6-1.1%201.1l-.5.4c-.3.3-.5.5-.6.8-.2.2-.2.5-.2.9H8c0-1%200-1.4.1-1.8.1-.4.5-.7%201.1-1.2l.6-.4c.2-.1.5-.4.6-.6.2-.3.3-.7.4-1%200-.3-.1-.7-.3-1-.5-.5-.9-.7-1.6-.7-.6%200-1.1.3-1.4.6-.3.4-.4.9-.5%201.4H5c.1-1.5.4-2.3%201.3-3.1%22%20mask%3D%22url%28%23b%29%22%2F%3E%3C%2Fg%3E%3Cg%20transform%3D%22translate%28155%2028%29%22%3E%3Cmask%20id%3D%22d%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23c%22%2F%3E%3C%2Fmask%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20d%3D%22M6.3%202.9c.6-.4%201.7-.8%202.7-.8%201.5%200%202.3.5%203%201.2.7.7%201%201.4%201%202.4%200%20.9-.3%201.3-.6%201.8-.2.3-.6.6-1.1%201.1l-.5.4c-.3.3-.5.5-.6.8-.2.2-.2.5-.2.9H8c0-1%200-1.4.1-1.8.1-.4.5-.7%201.1-1.2l.6-.4c.2-.1.5-.4.6-.6.2-.3.3-.7.4-1%200-.3-.1-.7-.3-1-.5-.5-.9-.7-1.6-.7-.6%200-1.1.3-1.4.6-.3.4-.4.9-.5%201.4H5c.1-1.5.4-2.3%201.3-3.1z%22%20mask%3D%22url%28%23d%29%22%2F%3E%3C%2Fg%3E%3Cg%20transform%3D%22translate%28155%2028%29%22%3E%3Cmask%20id%3D%22f%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23e%22%2F%3E%3C%2Fmask%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22nonzero%22%20d%3D%22M7.8%2011.9h2.5v2.4H7.8z%22%20mask%3D%22url%28%23f%29%22%2F%3E%3C%2Fg%3E%3Cg%20transform%3D%22translate%28155%2028%29%22%3E%3Cmask%20id%3D%22h%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23g%22%2F%3E%3C%2Fmask%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-width%3D%221.5%22%20d%3D%22M7.8%2011.9h2.5v2.4H7.8z%22%20mask%3D%22url%28%23h%29%22%2F%3E%3C%2Fg%3E%3Cg%20transform%3D%22translate%28155%2028%29%22%3E%3Cmask%20id%3D%22j%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23i%22%2F%3E%3C%2Fmask%3E%3Cpath%20fill%3D%22%23000%22%20fill-rule%3D%22nonzero%22%20d%3D%22M6.5%202.9c.7-.4%201.3-.8%202.4-.8%201.6%200%202%20.2%202.8.9.8.6%201.3%201.4%201.3%202.5%200%20.7-.4%201.4-.7%201.9-.2.3-.5.6-1%201l-.6.5c-.4.2-.7.5-.8.8-.1.2-.1.6-.1%201H8c0-.9%200-1.6.2-1.9.1-.3.5-.7%201-1.2l.5-.4c.2-.1.5-.4.6-.5.2-.3.4-.7.4-1%200-.4%200-.7-.2-1-.2-.4-.5-.8-1.6-.8-.9-.1-1.3.4-1.6.8-.2.4-.3.9-.3%201.3H5c.1-1.5.5-2.5%201.5-3.1%22%20mask%3D%22url%28%23j%29%22%2F%3E%3C%2Fg%3E%3Cg%20transform%3D%22translate%28155%2028%29%22%3E%3Cmask%20id%3D%22l%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23k%22%2F%3E%3C%2Fmask%3E%3Cpath%20fill%3D%22%23000%22%20fill-rule%3D%22nonzero%22%20d%3D%22M8%2012h2v2H8z%22%20mask%3D%22url%28%23l%29%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/rKQEEK)-->

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



