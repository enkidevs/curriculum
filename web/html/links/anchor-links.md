---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:
  - introduction

links:

---

# Anchor Tags

---
## Content

**Anchor Tags** represent a way to tell the browser to move up or down the same web page (think of content summaries) or to open other HTML pages in certain locations further down from the top.

Anchor links are still defined by the typical link `<a>` tag, but rather than linking to only to a file, they link to an `id` tag on the webpage. In this example, the link is navigating down to the `id` with the value `content`, which is usually written in HTML like this:

```html
<a href="#contact">
    Contact
</a>
<!-- further down the page -->
<div id="contact">
  <!-- contact section -->
</div>

```
[View CodePen](https://codepen.io/enkidevs/pen/Zjegoq)

One common trick by developers is to use this anchor tag as a placeholder for links during the page development. Links require the `href` attribute, so when the linked pages aren't ready to be linked yet, a simple `#` can be used. This placeholder technique makes the link valid and active without actually navigating anywhere.

Placeholder links are written like this and look and act like links without navigating anywhere:

```html
This is a
<a href="#">placeholder link</a>.
```

[View CodePen](https://codepen.io/enkidevs/pen/NBpQzw)


---
## Practice

Complete the following snippet in order for it to be valid:
```html
Link to the
<??? ???="#contact.html">
 contact section
<???> of the page.
```

* `a`
* `href`
* `/a`
* `style`
* `link`
* `/link`
* `url`
* `p`
* `/p`


---
## Revision

What denotes an anchor link?

```html
<a href="???contact">
  Link to ID named 'contact'.
</a>
```

* `#`
* `id=`
* `id:`
* `%`
* `@`
* `a:`
