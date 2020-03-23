---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[HTML <style> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style){documentation}'

---

# The `<style>` Element

---

## Content

The HTML `style` element is used to style the content of an html document. These styles are loaded with the HTML page and work even if external CSS fails to load for some reason. The `style` tag is often used to load **Critical CSS**[1]

```html
<head>
  <style>
    p {
      color: red;
    }  
  </style>
</head>
<body>
  <p>Color of this text is red.</p>
  <p>Color of this text is blue.</p>
</body>
```

Output:

![image-output](https://img.enkipro.com/1b62665911cc2168a8dc80e6084690ab.png)

The code above colors **all** the paragraphs in color red, as you can see in the picture.

### `style` attribute

The`style` attribute can be used to add style per element.

```html
<p style="color: red">
  Color of this text is red.
</p>
<p>
  Color of this text is black, 
  which is default.
</p>
```

Output:

![image-output](https://img.enkipro.com/741b9d7c80e283feb0eeb1f1f2d91a5d.png)

The above example, colors only that single paragraph element. 

We can use the `style` element and attribute together to provide styles to all elements and override the style for some elements. For example, to set the color of all paragraphs to red but change the color of one paragraph to blue.

Same output:

```html
<head>
  <style>
    p {
      color: red;
    }  
  </style>
</head>
<body>
  <p>Color of this text is red.</p>
  <p style="color: blue;">
    Color of this text is blue.
  </p>
</body>
```

Output

![image-output](https://img.enkipro.com/f65a564d1bf8a82e3c68c971afbf38ab.png)


The `style` element also has 4 attributes which are all optional and will be discussed in the Style course:
- type
- media
- nonce
- title

---
## Practice

Finish styling all paragraph elements within the document to have text color as `gray`:

```html
???
 ??? {
     ???: ???;
    }
??? 
  
<p> 
  Random text
</p>
```

* `<style>`
* `p`
* `color`
* `gray`
* `</style>`
* `<paragraph>`
* `</paragraph>`

---
## Revision

What is the `<style>` element used for?

???

* to style the content of an html document.
* only to color the text of a paragraph element.
* to resize the document to a specific size.
* to include important information about the author of the document

---

## Footnotes

[1:Critical CSS]
The critical CSS is used to style the above-the-fold content of your website. Above-the-fold content is what users see when your website first loads, which can include navigation and other elements. For this reason, it’s very important to properly style and render this part of the website as quickly as possible.
