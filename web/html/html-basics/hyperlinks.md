---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.markup-text.0: 10
  web.markup-text.2: 10

aspects:
  - introduction

links:
  - '[CodePen: Simple Link](https://codepen.io/enkidevs/pen/RBKobx){code}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks){documentation}'

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
    link to Enki
</a>'s website.</p>
```

![link-text](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2240%22%20y%3D%2233%22%20fill%3D%22%23000%22%3EI%20am%20a%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2284.46094%22%20y%3D%2233%22%20fill%3D%22%230001EE%22%3E%20link%20to%20Enki.com%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22200.94531%22%20y%3D%2233%22%20fill%3D%22%23000%22%3E%26apos%3Bs%20website.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22275.14063%22%20y%3D%2233%22%20fill%3D%22%230001EE%22%3E%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M88.5%2034.5h112%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/RBKobx)-->

When links are used with text, such as headings and paragraphs, the text links use most of the style properties of that text (like the font family, font size, font weight) with a few changes: 

* link text is blue by default. (`color: #0000EE;`)
* link text has a text decoration with an underline. (`text-decoration: underline;`)

---
## Practice

Complete the following snippet in order for it to be valid:
```html
<tag ???="http://mywebsite.com">
  My website
</tag>
```
tag = ???

* `href`
* `a`
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
