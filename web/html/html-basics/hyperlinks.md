---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Creating Hyperlinks](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks){documentation}'

---

# Hyperlinks

---
## Content

**Hyperlinks**, or links as they are commonly called, represent the way to click either text or images to tell the browser to move to another web page. Links can also open certain files, open user's email program, or even jump to different locations of a web page.

Links are defined by the `<a>` tag. Every link must have the `href` attribute, which takes a path of where to go navigate the web page to. In this example, the "contact.html" would be in the same folder as the existing webpage:

```html
<a href="contact.html">
    Contact
</a>
```

When links navigate to web pages on other web servers, it is required to use the "http://" protocol, then the domain name, any folder structure, and then the file. In this example, the web page is on another web server, then looking on the enki.com domain, then within the samples folder, and then linking to the page.html web page.

```html
<p>I am a <a
href="http://enki.com/samples/page.html">
    link to Enki.com
</a>'s website.</p>
```

![link-text](https://img.enkipro.com/2de7065475dfbb87f0f827bd0d63c945.png)

[View CodePen](https://codepen.io/enkidevs/pen/RBKobx)

When links are used with text, such as headings and paragraphs, the text links use most of the style properties of that text (like the font family, font size, font weight) with a few changes:

* link text is blue by default. (`color: #0000EE;`)
* link text has a text decoration with an underline. (`text-decoration: underline;`)

---
## Practice

Complete the following snippet in order for it to be valid:
```html
<??? ???="http://mywebsite.com">
  My website
<???>
```

* `a`
* `href`
* `/a`
* `style`
* `p`
* `link`


---
## Revision

The tag denoting a hyperlink is ???.

* `<a>`
* `<p>`
* `<body>`
* `<div>`
