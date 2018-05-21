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

Since HTML5, quoting attributes is optional.

Example:
```
<a href="#" class="btn">Click Me</a>
<a href=# class=btn>Click Me</a>
```
Both produce same result:
```
Click Me
Click Me
```

Many people find this feature useful because it saves them time from typing quotations.

Also, not putting quotation marks saves on bytes required for a page to load.

Nevertheless, there are numerous reasons why you should still use quotations:

- Easier readability
- All editors can properly deal with quoted attributes
- Easier to maintain(Empty attributes)
- Easier to use "find and replace"
- Consistency
- Converting HTML to XHTML becomes easier because in XHTML quotations are necessary

There are times when putting quotations is necessary, like when an attribute contains a space or any of `<`, `>`, `"`, `=`, `'` or `` ` ``.

Example:
```
<a href="#" class="md btn">Click Me</a>
<a href=# class=btn>Click Me</a>
```
Result:
```
Click Me
Click Me
```

In the example above, both the unquoted and quoted attributes are read properly.

However, if in the first attribute which contains a space you decide to omit the quotations, you might run into a problem.
This is because the browsers can read "md" and "btn" seperatly, like so:
```
<a href="#" class="md" btn="">Click Me</a>
```

This can cause the button to not work as intended.

It doesn't matter which quotations you use:
Example:
```
<a href="#" class="btn">Click Me</a>
<a href='#' class='btn'>Click Me</a>
```
In the example above, both lines produce the same output. However, it is good practice to use the same quotations every time for consistency.

---
## Practice

Which line of HTML5 is NOT written correctly?

???

* <a href=”#” class=”lg btn>Click Me</a>
* <a href="#" class="md btn">Click Me</a>
* <a href=’#’ class=’sm btn’>Click Me</a>
* <a href=# class=btn>Click Me</a>

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

Which statement about quoting attributes is correct?

???

 * Quoting attribute values is optional
 * Quoting attribute values is mandatory
 * Attribute values can only work with single quotation
 * Attribute values are harder to read with quotation
