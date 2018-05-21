---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

standards:
  web.syntax-html.2: 10
  web.syntax-html.4: 10
  web.syntax-html.5: 10
  web.syntax-html.6: 10

---
# Close all HTML elements
---
## Content

HTML elements consist of a start and end tag, with content between the tags.

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

In HTML5 there are no strict rules for some tags, however, it is best practice to use closing tags. Why?

Because, even though HTML5 assumes a new tag can start without the previous one being closed, there are older browsers versions that do not support HTML5. These browsers use XHTML or HTM, both of which have stricter rules.

Also, certain tags do not have to have an open tag either, like the `<body>`, `<head>`, `<html>`, etc.. However, for easier readability, it is best to use both the starting and ending tags of an HTML element.

---
## Practice

Which statement is incorrect about opening and closing  HTML5 elements?

???

 * All the elements in HTML5 require both the opening and closing tag otherwise they do not work.
 * Although HTML5 isn’t strict about using open and close tags, using them certainly does makes the document easier to inspect.
 * Certain elements like `<body>` or `<head>` don't require the use of either of the tags, however, it helps with readability.
 * Most HTML elements have to have a closing tag to be displayed properly.
