---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction
---
# Hyperlinks
---
## Content

Hyperlinks are links in HTML. They are very useful for navigating from one document to another.
By default, unclicked links are blue, highlighted and underlined. 
Whereas links you have already clicked on at least once are red.

Hovering over hyperlinks changes the cursor to a pointer.

The hyperlink is defined with the `<a>` tag:
```
<a href="URL">Link text</a>
```
or
```
<a href="https://www.enki.com/"> 
  5-minute workouts</a>
```
Result:
```
5-minute workouts
```
In the example above, the `5-minute workouts` is the hyperlink, and by clicking on the text you are taken to the URL provided in the `href="URL"` attribute. 

The attribute `href` is the most important element because it specifies the destination(URL).

Where the link opens is set with the `_target=""` attribute.

- _self     - Opens the link in the same tab or window
- _top      - Opens the link in the full body of the window
- _parent   - Opens the link in the parent frame
- _blank    - Opens the link in a new tab or window
- framename - Opens the link in a named frame

Opening the link in a different tab:
```
<a href="https://www.enki.com/" 
  target="_blank"> 5 minute workouts </a> 
```
**Note:If no target is set, the linked page or document is opened in the current tab.**

You can also create `placeholder` links. These are links that can be clicked, but do nothing.
```
<a href="#">Empty href</a>
```

Next to linking through text, it is also common to link through pictures.

```
<!DOCTYPE html>
<html>
<body>

<a href="https://www.enki.com/" 
    target="_blank">
 <img src ="http.logo.com/enki.png"
    alt ="Enki logo"
 style="width:36px;height:36px;">
</a>
 
</body>
</html>
```

In the example above, the picture with the URL `http.logo.com/enki.png` becomes the link.

---
## Practice

Link text that opens the webpage in a new window:

`<??? ???="???" ???="???">Link to Enki<???>`

* a 
* href
* http://enkipro.com
* target
* _blank
* /a
* img
* link
* /link
* src
* _new

---
## Revision

Which line of code will link text to open a new window?

???

* `<a href="http://enkipro.com" target="_blank">Link to Enki</a>`
* `<link href="http://enkipro.com" target="_blank">Link to Enki</link>`
* `<a src="http://enkipro.com" target="_blank">Link to Enki</a>`
* `<a href="http://enkipro.com" target="_new">Link to Enki</a>`

How is a placeholder link created, where the link works, but it doesn't open a new page?

`<a href="???">Empty href</a>`

* #
* ""
* *
* _empty
* _self
* Leave empty

---
## Quiz

Which statement about these paragraphs & links is true?

```
<p><a href="http://enkipro.com">Click Me</a></p>
<a href="http://enkipro.com"><p>Click Me</p></a>
```

???

* Both options are valid, although best to place links within paragraphs.  
* Both options are valid, although best to place paragraphs within links.  
* HTML links are required to be placed within paragraphs to be valid. 
* HTML links are required to be placed around entire paragraphs to be valid. 
* Neither line in this example is valid HTML. 

When will the cursor change to a pointer with the following code?

```
<main>
  <a href="http://www.enkipro.com">
    Check out Enki
  </a>
</main>
```

When the mouse hovers: ???

* over the text within the `<a>` element.
* anywhere within the `<main>` element.
* anywhere within the web page.
* The cursor doesn’t change in this case.

What is the default style of a text link in HTML?

???

* It is blue and underlined. 
* It is blue and bold.
* There is no visual change to a text link.
* The cursor changes to pointer when hovered over it.
* The cursor doesn't change.



