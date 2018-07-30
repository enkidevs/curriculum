---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - obscura

standards:
  web.syntax-html.6: 10

---
# Quote attribute values
---
## Content

Since HTML5, using quotes around attributes is optional.

Example:
```html
<a href="#" class="btn">
  Click Me
</a>

<a href=# class=btn>
  Click Me
</a>
```
Both produce same result:

![click-me-link](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22111%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22111%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22114%22%20height%3D%2229%22%20x%3D%2221%22%20y%3D%2221%22%20fill%3D%22%23F069A6%22%20stroke%3D%22%23BC5184%22%20stroke-width%3D%222%22%20rx%3D%228%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2241%22%20y%3D%2242%22%3EClick%20Me%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%22114%22%20height%3D%2229%22%20x%3D%2221%22%20y%3D%2261%22%20fill%3D%22%23F069A6%22%20stroke%3D%22%23BC5184%22%20stroke-width%3D%222%22%20rx%3D%228%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2241%22%20y%3D%2282%22%3EClick%20Me%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Many people find this feature useful because it saves them time from typing quotations. Also, not putting quotation marks saves on bytes required for a page to load.

Nevertheless, there are numerous reasons why you should *still use* quotations:

- Easier readability
- All editors can properly deal with quoted attributes
- Easier to maintain (esp. with empty attributes)
- Easier to use "find and replace"
- Consistency
- Converting HTML to XHTML becomes easier because in XHTML quotations are necessary

There are times when putting quotations is necessary, like when an attribute contains a space or any of `<`, `>`, `"`, `=`, `'` or `` ` ``.

Example:
```html
<a href="#" class="btn large">
  Click Me
</a>

<a href=# class=btn large>
  Click Me
</a>
```
Result:

![click-me-link-big-small](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22121%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22121%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22114%22%20height%3D%2229%22%20x%3D%2221%22%20y%3D%2231%22%20fill%3D%22%23F069A6%22%20stroke%3D%22%23BC5184%22%20stroke-width%3D%222%22%20rx%3D%228%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2241%22%20y%3D%2252%22%3EClick%20Me%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%22152%22%20height%3D%2239%22%20x%3D%2221%22%20y%3D%2221%22%20fill%3D%22%23F069A6%22%20stroke%3D%22%23BC5184%22%20stroke-width%3D%222%22%20rx%3D%228%22%2F%3E%3Crect%20width%3D%22114%22%20height%3D%2229%22%20x%3D%2221%22%20y%3D%2271%22%20fill%3D%22%23F069A6%22%20stroke%3D%22%23BC5184%22%20stroke-width%3D%222%22%20rx%3D%228%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2241%22%20y%3D%2292%22%3EClick%20Me%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2224%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2248%22%20y%3D%2249%22%3EClick%20Me%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In the example above, it is easy to see the buttons do not display the same. This is because the code on the unquoted attributes will only recognize the class 'btn' and not know what to do with the second class 'large', interpreting the code like this:
```html
<a href="#" class="btn" large="">
  Click Me
</a>
```

It also doesn't matter which quotations you use, single or double:

Example:
```html
<a href="#" class="btn">
  Click Me
</a>
<a href='#' class='btn'>
  Click Me
</a>
```
In the example above, both lines produce the same output. However, it is good practice to use the same quotations every time for consistency, especially when working with others on a team.

---
## Practice

Which line of HTML5 is NOT written correctly?

???

* `<a href=”#” class=”lg btn>Click Me</a>`
* `<a href="#" class="md btn">Click Me</a>`
* `<a href=’#’ class=’sm btn’>Click Me</a>`
* `<a href=# class=btn>Click Me</a>`

---
## Revision

Which is not true about using quotation marks?

???

* Attribute values can never work without quotation
* Easier readability
* Easier to maintain(Empty attributes)
* Easier to use "find and replace"
* Consistency
* Converting HTML to XHTML becomes easier because in XHTML quotations are necessary

___
## Quiz

### How much do you know about quoting attributes?

Which statement about quoting attributes is correct in HTML5?

???

 * Quoting attribute values is optional
 * Quoting attribute values is mandatory
 * Attribute values can only work with single quotation
 * Attribute values are harder to read with quotation
