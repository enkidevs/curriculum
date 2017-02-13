# HyperText Markup Language
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[First web page](http://info.cern.ch/hypertext/WWW/TheProject.html){website}'

---
## Content

Also known as **HTML**, it is the standard markup language used to create websites.  HTML[1] describes the structure of a web page semantically, using **tags**. A HTML tag syntax is the name of the HTML element, enclosed by the *less than* and *greater than* signs.

To denote the end of an element, a closing tag is used. It has an extra forward slash before the name of the element:
```html
<element>Content</element>
```

HTML *elements* are the foundation on which the page is built. To specify that the following code is HTML, an `<html>` tag should open and close the document:
```html
<html>
 <!-- code -->
</html>

```

Elements give content meaning based on their function. For example, a page heading becomes `<h_>`, ranging from `<h1>`, the most important, to `<h6>`, the smallest heading.

Paragraphs, `<p>`, images, `<img>` and hyperlinks, `<a>` are also important semantic building blocks.

To give them meaning, however, they must be enclosed in a `<body>` element, which establishes what part of the HTML document the browser has to represent:
```html
<body>
  <h1> Title </h1>
  <h3> Subtitle </h3>
  <p> This is a paragraph in
      the page with an
      <a href="mywebsite.com">
      external link</a>.</p>
</body>
```
The part of the HTML that is not *displayed* by the browser, but helps it decide *how* to display the content inside the body is called **header**. It usually contains information such as the title of the web page displayed in the browser's tab or the page's characters encoding[2]:
```html
<html>
<head>
  <title>Tab Title</title>
  <meta charset="UTF-8">
</head>
<body>
 ...
</body>
</html>
```

You can find a link to the first ever *online* web page after the workout.

---
## Practice

The two main components of a HTML document are ???.

* <head> and <body>
* <heading> and <body>
* <p> and <a>
* <h> and <body>

---
## Revision

The two main components of a HTML document are ???.

* <head> and <body>
* <heading> and <body>
* <p> and <a>
* <h> and <body>


---
## Footnotes

[1:HTML]

You can start writing HTML by creating a new file with the `.html` extension. To see how the code looks, drag and drop the file in your browser.


[2:Encoding]

A way to map a sequence of bytes to a displayable character. The most used encoding is *UTF-8*, also known as *Unicode*. It covers most of the characters and symbols in the world.

Other encoding standards are ASCII and ISO-8859.
