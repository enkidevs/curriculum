---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.syntax-html.4: 10

aspects:
  - introduction

links:

  - '[First web page](http://info.cern.ch/hypertext/WWW/TheProject.html){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Glossary/HTML){documentation}'


---

# HyperText Markup Language

---
## Content

HyperText Markup Language, more often just referred to as **HTML**, is the standard markup language used to create websites. HTML describes the structure of a web page semantically and uses elements that are made up of **tags**. Tags are easy to recognize as they use *less than* (<) and *greater than* (>) signs.

To denote the end of most HTML elements, a closing tag is used. It has an extra forward slash before the name of the element:

```html
<element>Content</element>
```

Let's look at some examples to see how .. the first tag we'll look at is `<html>` ...

HTML *elements* are the foundation on which the page is built. To specify that the following code is HTML, an `<html>` tag should open and close the document:

```html
<html>
 <!-- more code here -->
</html>
```

Elements give content meaning based on their function. For example, page headings, paragraphs, images, and hyperlinks are important semantic building blocks. To be displayed, however, they must be enclosed in a `<body>` element. All the content that is displayed on a webpage is found in-between the `<body>` tags. As an example, here is a simple webpage with a title, a subtitle and a paragraph.

```html
<html>
  <body>
    <h1> Title </h1>
    <h2> Subtitle </h2>
    <p> This is a paragraph in the page.</p>
  </body>
</html>
```

Note how the `<body>` tags are *nested* between the `<html>` tags.

There is one more important HTML element that we need to mention, the `<head>`. When you are building a website, some part of the code will decide *how* the browser displays the content, what the title of the webpage is (that will be displayed in the browser's tab) or link to a styling (CSS) file. All of this code belongs between the `<head>` tags. Below you have an example of a very simple webpage. Don't worry too much about remembering all the tags as they will be explained in more detail as you progress, but keep in mind that an HTML page always contains the `<html>`, `<head>` and `<body>` tags.

```html
<html>
  <head>
    <title>My first webpage</title>
  </head>
  <body>
    <h1> Title </h1>
    <h2> Subtitle </h2>
    <p> This is a paragraph in the page.</p>
  </body>
</html>
``` 

And here is how the code is displayed in the browser:

![simple-website]("https://img.enkipro.com/4ff0530c2a9496b465b732bd2e7319db.png")

You can bookmark this insight to receive a link to the *first online web page*.

---
## Practice

Select two main components of an HTML document: ???.


* `<head>` and `<body>`
* `<heading>` and `<body>`
* `<p>` and  `<a>`
* `<h>` and `<body>`

---
## Revision

Select two main components of an HTML document: ???.


* `<head>` and `<body>`
* `<heading>` and `<body>`
* `<p>` and `<a>`
* `<h>` and `<body>`
 
