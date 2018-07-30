---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction

standards:
  web.syntax-html.0: 10
  web.markup-text.0: 10
  web.markup-text.2: 10
  
links:
  - '[CodePen: Simple Link](https://codepen.io/enkidevs/pen/vaKKQZ){code}'
  
---
# Hyperlinks
---
## Content

Hyperlinks are more commonly called just 'links' in HTML. They are very useful for navigating from one document to another or even different sections of long web pages.

* By default, unvisited links are blue and underlined.
* Whereas links you have already clicked on at least once are red.
* Hovering over hyperlinks changes the cursor to a pointer.

The hyperlink is defined with the `<a>` tag:
```html
<a
  href="URL">This is linked text.
</a>
```
or
```html
<a
  href="https://www.enki.com/">
  Visit Enki's 5-minute workouts!
</a>
```
Result:

![link-visit-enki](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%2052%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2252%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%230001EE%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2232%22%3EVisit%20Enki%26apos%3Bs%205-minute%20workouts!%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M20.5%2033.5h215%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/vaKKQZ)-->

In the example above, the `Visit Enki's 5-minute workouts!` is the hyperlink, and by clicking on the text will open the URL provided in the `href="URL"` attribute. The attribute `href` is the most important element because it specifies the destination(URL) of where the link should open.

By default, links open within the existing tab or window. The linked page can be directed to open differently by setting  \the `_target="???"` attribute with these options:

 - _self     = Default setting. Opens the link in the same tab or window.
 - _top      = Opens the link in the full body of the window.
 - _parent   = Opens the link in the parent frame.
 - _blank    = Opens the link in a new tab or window.
 - framename = Opens the link in a named frame.

Opening the link in a new tab is written like this:
```html
<a
  href="https://www.enki.com/"
  target="_blank">
  Visit Enki's 5-minute workouts!
</a>
```

During the web page development process, if web pages aren't created yet or you don't want to link them yet while still creating the linked object, `placeholder` links can be used. These provide the same interactivity as real links in that they can be clicked, but they do not open any new pages.

```html
<a href="#">This link is interactive,
 but doesn't work yet.</a>
```

It is also common to add links to images. To link images, the same tags are used, but wrap around an image element like this: 

```html
<a href="https://enki.com/" 
   target="_blank">
  <img src ="logo.svg" 
       alt ="Enki Logo" />
</a>
```

In the example above, the image of the Enki Logo will link to this page `https://www.enki.com` when clicked.

---
## Practice

Create linked text that opens a webpage in a new window:

```html
<??? ???="http://enki.com" 
  ???="???">
  Link to Enki
<???>
```

* `a`
* `href`
* `target`
* `_blank`
* `/a`
* `img`
* `link`
* `src`
* `_new`


---
## Revision

When will the cursor change to a pointer with the following code?

```html
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

* `<a href="http://enki.com" target="_blank">Link to Enki</a>`
* `<link href="http://enki.com" open="new">Link to Enki</link>`
* `<a src="http://enki.com" window="_new">Link to Enki</a>`
* `<a href="http://enki.com" target="_new">Link to Enki</a>`
