---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - '[Browsing context](https://developer.mozilla.org/en-US/docs/Glossary/Browsing_context){documentation}'
  - '[Origin](https://developer.mozilla.org/en-US/docs/Glossary/origin){documentation}'
  - '[MDN docs for iFrame](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe){website}'
  - '[Window object](https://developer.mozilla.org/en-US/docs/Web/API/Window){website}'
  
---
# Iframe
---
## Content

The HTML `<iFrame>`, or **The Inline Frame element** is used to create a nested browsing context. This is done by `embedding` another HTML page into the current page. 

For instance, Gmail is built using iframes, as are many others with OAuth implementations (Twitter, Facebook, Google, & Yahoo!)

Browsing context is usually a tab, window or a frame in a browser where the browser displays a web page and its content. Each browsing context has its own specific origin, and a history of all the displayed web pages in the order they were displayed. Communication between these tabs is restricted, and the only way tabs can communicate is if they have the same origin.

**Note: You can have as many `<iframe>` elements within a document and each of them will embed another document within the `<body>` of the page. Nevertheless, the more `<iframe>` elements you have, the more memory it will take to load that page. So even though you can have unlimited amounts of `<iframe>` elements, you should only have what's necessary to not run into performance issues.**

When you nest browsing context, the one containing the other is called the parent browsing context. Whereas the topmost tab/window containing the parent `<iframe>` element is called a `Window` object. (Check the `more info` section for more info on `Window` objects.)

Simple example:
```
<iframe
  src="https://apple.com">
</iframe>
```

Also, if a browser doesn't support the `<iframe>` element(all modern browsers support iframes), you should add a note within the `<iframe>` element. For instance:
```
<iframe
  src="https://apple.com">
  <p>
    Your browser does not
    support iframes.
  </p>
</iframe>
```

---
## Practice

Write the code to display the website Apple.com within a web page.

```
<??? ???="???">
  </???>
```

What is the best way to deal with browsers that do not support `<iframe>`?

???

* `iframe`
* `src`
* `http://apple.com`
* `/iframe`
* Add text within the iframe element with a note.
* `href`
* `frame`
* `/frame`
* Use simple JavaScript code to fix the issue. 
* Add a fallback page within the iframe. 
* The iframe element is not supported in HTML5. 


---
## Revision

Gmail is built using what, as does many OAuth implementations (Twitter, Facebook, Google, & Yahoo!)?

???

* iframes
* frames
* links
* nests
* framesets

---
## Quiz

### How much do you know about iframes?

Write the code to display the website EnkiPro.com when clicked within the frame showcasing Apple's website.

```
<??? 
  ???="http://www.apple.com"
  ???="my-frame">
<???>
<p>
  <a href="http://www.enkipro.com" 
    ???="???">
    Click to link.
  </a>
</p>
```

* iframe
* src
* name
* /frame
* target
* my-frame
* href
* frame
* /frame

