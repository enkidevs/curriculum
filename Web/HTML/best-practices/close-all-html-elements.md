# Close all HTML elements
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - obscura
  - introduction


---
## Content

HTML elements consist of a start and end tag, with content inbetween the tags.

Example:
```
<p>Content goes here</p>
```
Result:
```
Content goes here
```
In this example, the `<p>` is the starting tag of a paragraph, "Content goes here" is the input and the `</p>` is the closing tag.

Most HTML elements have to have a closing tag to be displayed properly. However, some tags, like the paragraph tag in the example above, can be omitted.

Example:
```
<p>Content goes here
```
Result:
```
Content goes here
```

In HTML5 there are no strict rules for some tags, however it is best practice to use closing tags. Why?

Because, even though HTML5 assumes a new tag cannot start without the previous one being closed, there are older browsers versions that do not support HTML5. These browsers use XHTML or HTM, both of which have stricter rules.

Also, certain tags do not have to have an open tag either, like the `<body>`, `<head>`, `<html>`, etc.. However, for easier readability, it is best to use both the starting and ending tags of an HTML element.

---
## Practice

Are all HTML5 elements required to be opened and closed (this isn’t a trick regarding self-closing tags, either)?

???

* No. Although HTML5 isn’t strict about this, it certainly makes the document easier to inspect.
