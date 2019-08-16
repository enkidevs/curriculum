---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.markup-text.0: 10

aspects:
  - introduction

links:
  - '[style element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style){documentation}'

---
# Style element

---
## Content

The HTML `style` element is used to style the content of an html document. Also, there is a `style` attribute used to achieve the same thing, but per element.

Example 1:
```html
<p style="color: red"> 
  Color of this text is red.
</p>
```
Output:

![image-output](https://img.enkipro.com/b199c00475956669e57f76ba58a0f654.png)

The above example, colors only that single paragraph element. 

If we would like to color all paragraphs withing the whole HTML document, we would add the `style` element at the top of the document.
However, if we add a style attribute within any `<p>` element, it would override our top level style element.

Example 2:
```
 <style>
    p {
      color: red;
    }
  </style> 
  
<p> 
  Color of this text is red.
</p>
```
Same output:

![image-output](https://img.enkipro.com/b199c00475956669e57f76ba58a0f654.png)

Example 3:
```
 <style>
    p {
      color: red;
    }
  </style> 
  
<p style="color: teal"> 
  Color of this no longer red.
</p>
```
Output:

![image-output](https://img.enkipro.com/f8368ff87a3b2541e7bc9b23f550f501.png)

The `style` element also has 4 attributes which are all optional and will be discussed in the Style course:
  - type
  - media
  - nonce
  - title

---
## Practice

Finish styling all paragraph elements within the document in the color `gray`:

```
???
 ??? {
     ???: ???;
    }
??? 
  
<p> 
  Random text
</p>
```

* <style>
* p
* color
* gray
* </style>
* <paragraph>
* </paragraph>

---
## Revision

What is the <style> element used for?

???

* to style the content of an html document.
* only to color the text of a paragraph element.
* to resize the document to a specific size.
* to include important information about the author of the document
