---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - obscura

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

![click-me-link](https://img.enkipro.com/1184fa553196db3c06d4aee6934e5d55.png)

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

![click-me-link-big-small](https://img.enkipro.com/796ceadc553b60a2c00f07c3de9a1bcb.png)

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
 
