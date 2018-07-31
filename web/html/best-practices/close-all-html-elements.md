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
  
links:
  - '[Google StyleGuide](https://google.github.io/styleguide/htmlcssguide.html#Optional_Tags){documentation}'

---
# Close all HTML elements
---
## Content

HTML elements typically consist of a start and end tag, with content between the tags.

Example:
```html
<p>Content goes here</p>
```
Result:

![close-tags.svg](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2255%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2255%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2233%22%3EContent%20goes%20here%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In this example, the `<p>` is the starting tag of a paragraph, the `</p>` is the closing tag, and all the text to be displayed within the paragraph is written between those tags.

In HTML5 there are no strict rules for some closing tags - such as, the closing paragraph tag isn't necessary. As you can see in this example, this paragraph works without any closing `</p>` tag:
```html
<p>Content goes here
```
However, adding the closing tags is considered a best practice. Why? Because, even though HTML5 assumes a new tag can start without the previous one being closed, there are older browsers versions that do not support HTML5. These browsers use XHTML or XML, both of which have stricter rules and many developers today are used to adding closing tags for consistency.

Also, certain tags in HTML5 do not have to have an open tag either, like the `<body>`, `<head>`, `<html>`, etc.. However, for easier readability for many developers, it is best to use both the starting and ending tags of an HTML element.

In HTML5, this is still a bit unusual today, but valid and currently encouraged by Google:

```html
<!-- Not recommended by Google-->
<!DOCTYPE html>
<html>
  <head>
    <title>Web Page Title</title>
  </head>
  <body>
    <p>Web Page Content.</p>
  </body>
</html>

<!-- Recommended by Google-->
<!DOCTYPE html>
<title>Web Page Title</title>
<p>Web Page Content.
```

---
## Practice

Which statement is incorrect about opening and closing  HTML5 elements?

???

 * All the elements in HTML5 require both the opening and closing tag, otherwise they do not work.
 * Although HTML5 isn’t strict about using open and close tags, using them certainly does makes the document easier to inspect.
 * Certain elements like `<body>` or `<head>` don't require the use of either of the tags, however, it helps with readability.
 * HTML elements have to have a closing tag to be displayed properly.
