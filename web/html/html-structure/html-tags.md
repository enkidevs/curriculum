---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.syntax-html.2: 10

aspects:
  - introduction

---
# Tags in HTML
---
## Content

In HTML everything is written in tags. There is a start tag and an end tag and they differ by 1 character: "`/`".

Elements are written with tags:
```
Start tag: <element-name>
End tag: </element-name>
```

Common elements:
- `<html>` (Defines an HTML document)
- `<body>` (Documents body)
- `<p>` (Paragraph Text)
- `<h1>` (Heading Text)


Tags are not case sensitive. However, they are usually written in lowercase. This is because there is a wide range of developers who do not use HTML5, but rather XHTML. Because of that, they were influenced to write tags in lowercase so their HTML can be read by both markup languages.

Also, there are elements which have no ending tag and are only written with a single opening tag. These are called self-closing tags and there are only a few of them. 

Most common self-closing elements:
- `<img>` (Inserts an image)
- `<br>` (Defines a line break)
- `<hr>` (Commonly referred to as horizonal rule)

The first line of every HTML document starts with the `<!DOCTYPE>`, which isn't an HTML element, but a definition for the browser to identify that the code is written in HTML5. This is the only HTML/CSS code that is commonly written in all caps.

---
## Practice

Which of these characters is used to represent an end tag?

???

HTML tags are recommended to be written in which case?

???

How many tags are used in this code:
```
<h1>Large Text Heading</h1>
<img src="photos/image.jpg">
<p>I’m just a simple paragraph.</p>
```

???

* `/`
* lowercase
* 5
* `^`
* `<`
* `>`
* `*`
* uppercase
* camelcase
* 2
* 3
* 4

---
## Revision

Every HTML element requires both an opening and closing HTML tag.

???

What is the difference between an opening and closing HTML tag?

???

* False
* closing tag has a / within it.
* True
* there is no different between opening & closing tags.
* opening tag has a / within it.
* closing tag is an empty element.

---
## Quiz

### How much do you know about HTML tags?

Which language requires HTML tags to be written in lowercase and has influenced  developers to continue to write HTML tags that way?

???

* XHTML
* HTML1
* HTML4
* CSS
