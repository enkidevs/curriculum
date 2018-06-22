---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.markup-text.0: 10
  web.markup-text.2: 10

aspects:
  - introduction
---
# Hyperlinks
---
## Content

Hyperlinks are links in HTML. They are very useful for navigating from one document to another. 
By default, un-visited links are blue, highlighted and underlined.
Whereas links you have already clicked on at least once are red.

Hovering over hyperlinks changes the cursor to a pointer.

The hyperlink is defined with the `<a>` tag:
```
<a
  href="URL">Link text
</a>
```
or
```
<a
  href="https://www.enki.com/">
  5-minute workouts
</a>
```
Result:
```
5-minute workouts
```

In the example above, the `5-minute workouts` is the hyperlink, and by clicking on the text you are taken to the URL provided in the `href="URL"` attribute.

The attribute `href` is the most important element because it specifies the destination(URL).

Where the link opens is set with the `_target="???"` attribute.

 - _self     = Opens the link in the same tab or window
 - _top      = Opens the link in the full body of the window
 - _parent   = Opens the link in the parent frame
 - _blank    = Opens the link in a new tab or window
 - framename = Opens the link in a named frame

Opening the link in a different tab:
```
<a
  href="https://www.enki.com/"
  target="_blank">
  5 minute workouts
</a>
```
**Note:If no target is set, the linked page or document is opened in the current tab.**

You can also create `placeholder` links. These are links that can be clicked, but do nothing.

```
<a
  href="#"> Empty href
</a>
```

Next to linking through text, it is also common to link through pictures.

```
<!DOCTYPE html>
<html>
<body>

<a
   href="https://www.enki.com/"
   target="_blank">
  <img
    src ="http.logo.com/enki.png"
    alt ="Enki logo"
    style="width:36px;height:36px;"
   />
</a>

</body>
</html>
```

In the example above, the picture with the URL `http.logo.com/enki.png` becomes the link.

---
## Practice

Create a hyperlink text that opens a webpage in a new window:

```
<tag ???="???"
???="???">
  Link to Enki
</tag>
```

tag = ???

* `href`
* `http://enkipro.com`
* `target`
* `_blank`
* `a`
* `img`
* `link`
* `src`
* `_new`


---
## Revision

When will the cursor change to a pointer with the following code?

```
<main>
  <a
    href="http://www.enkipro.com">
    Check out Enki
  </a>
</main>
```

When the mouse hovers: ???

How is a placeholder link created, where the link works, but it doesn't open a new page?

`<a href="???">Empty href</a>`

What is the default style of a text link in HTML?

???

* over the text within the `<a>` element.
* `#`
* It is blue and underlined.
* anywhere within the `<main>` element.
* anywhere within the web page.
* The cursor doesn’t change in this case
* `""`
* `*`
* `_empty`
* `_self`
* `Leave empty`
* It is blue and bold.
* There is no visual change to a text link.


---
## Quiz

### How much do you know about HTML hyperlinks?

Which line of code will link text to open a new window?

???

* `<a href="http://enkipro.com" target="_blank">Link to Enki</a>`
* `<link href="http://enkipro.com" open="new">Link to Enki</link>`
* `<a src="http://enkipro.com" window="_new">Link to Enki</a>`
* `<a href="http://enkipro.com" target="_new">Link to Enki</a>`
