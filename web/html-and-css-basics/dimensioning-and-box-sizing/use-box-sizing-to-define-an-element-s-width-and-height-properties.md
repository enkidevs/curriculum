---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - css

  - box-sizing

  - width

  - height

  - border-box


links:

  - '[css-tricks.com](https://css-tricks.com/box-sizing/){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing){documentation}'


---

# Use `box-sizing` to define an element's `width` and `height` properties 

---
## Content

The default value for `box-sizing` is `content-box`. This setting indicates only the content is included in the total `width` and `height` properties. 

Using `padding-box` will include the content and padding, but is only supported in Firefox.

The most popular value `border-box` will include content, padding and border. This makes working with percentages and building the layout easier, since the total `width` and `height` values include all three properties.

Both squares are initially defined as `250×250`. Because of the different `box-sizing` values, one expands because of the padding, while the other does not:

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20320%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M10,0%20L808,0%20L808,318%20L10,318%20L10,0%22/%3E%0A%3C/g%3E%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22290%22%20y=%22138%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2216%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3E%20%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M108,18%20L390,18%20L390,300%20L108,300%20L108,18%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M108,18%20L390,18%20L390,19%20L108,19%20L108,18%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M108,299%20L390,299%20L390,300%20L108,300%20L108,299%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M108,18%20L109,18%20L109,300%20L108,300%20L108,18%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M389,18%20L390,18%20L390,300%20L389,300%20L389,18%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22124%22%20y=%2266%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Ebox-sizing:%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22124%22%20y=%22107%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Econtent-box;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22124%22%20y=%22148%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Epadding:%2015px;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M499,33%20L749,33%20L749,283%20L499,283%20L499,33%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M499,33%20L749,33%20L749,34%20L499,34%20L499,33%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M499,282%20L749,282%20L749,283%20L499,283%20L499,282%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M499,33%20L500,33%20L500,283%20L499,283%20L499,33%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M748,33%20L749,33%20L749,283%20L748,283%20L748,33%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22515%22%20y=%2281%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Ebox-sizing:%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22515%22%20y=%22122%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Eborder-box;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22515%22%20y=%22163%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Epadding:%2015x;%3C/text%3E%0A%3C/g%3E%0A%0A%3C/g%3E%0A%3C/svg%3E%0A)

---
## Practice

Which properties default value is `content-box` ? 

???


* `box-sizing` 
* `padding-box` 
* `border-box`

---
## Revision

What's the default value for `box-sizing`? 

???


* `content-box`
* 0
* `undefined`
* `padding-box`
* `border-box`

