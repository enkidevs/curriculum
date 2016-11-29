# Applying CSS
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

We talked about CSS and what it can do, but we didn't mention how to actually make the browser use it alongside the HTML file.

There are 3 ways of doing so. The following order goes from the least specific to the most specific.

### External CSS file

To create an external CSS document, all you have to do is create new text file with a `.css` extension, in any text editor. Saving the file in the same enclosing folder as the HTML document will prevent path incompatibilities.

Within the `<head>` element of the HTML document, add a new `<link>` element pointing to the CSS file, like so:
```html
<head>
  <link rel="stylesheet" href="main.css">
</head>
```
Just as `<a>` elements, for the link to work properly, `href` must be the path to the `.css` file. The above snippet refers to a style sheet located in the same directory as the HTML document. To link a CSS file inside a subdirectory:
```html
<link rel="stylesheet"
   href="subdir/main.css" >
```

### Internal CSS

Another method that makes use of the `<head>` tag inside the HTML document is nesting the CSS code inside `<style>` tags:
```html
<head>
  <style>
    p{
      color: red;
    }
    #my-div{
      background: purple;
    }
   </style>
<head>
<body>
 <p></p>
 <div id="my-div"></div>
</body>
```

### Inline CSS

The third way of doing it is writing CSS code straight inside HTML tags, using the `style` attribute:
```html
<div style="background: green;
      font-size:30px;"></div>
```
This is bad practice as it cannot be overridden by an external CSS file and may cause unexpected problems.

*Note:* Even though there are multiple ways in which you can style an HTML page, the recommended one is using external files, as it splits the resources into *structure* and *styling*.

---
## Practice

Complete the HTML snippet to import an external CSS file:
```
<head>
  <??? ???="stylesheet" 
           ???="index.css">
</head>
```

*`link`
*`rel`
*`href`
*`import`
*`name`

---
## Revision

What is the recommended way of applying CSS?

???
*External file.
*Internal CSS.
*Inline CSS.