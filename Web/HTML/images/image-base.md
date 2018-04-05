---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

link:
  - https://www.w3schools.com/tags/tag_base.asp
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base
  
---
# Image Base
---
## Content

The `<base>` element is used to specify a link path for all relative URL attributes. There can be only one `<base>` element per page or document, and it is written inside the `<head>` element. If more than one `<base>` element is present, only the first `href` and `target` values are used, while the others are ignored.

Also, the `<base>` element cannot be empty, it must contain either the target attribute, the href attribute, or both of them.

Example 1:
```
<head>
   <base href="https://www.enki.com" 
      target="_blank">
</head>
```

Example 2:
```
<head>
   <base 
    href="https://www.enki.com">
</head>
 ```


In the examples above, all links in the web page or document will lead to the `https://www.enki.com` link. The only difference is, in example one, the `target` attribute is used to set all the links to open in a different tab. 


**Note: In HTML5 the `<base>` eng tag should be omitted. However, in XHTML it has to be closed.**

---
## Practice

Assign the link path for every image on the webpage:

<???>
  <??? ???>
<???>

* head
* base
* href="http://www.enkipro.com/images/"
* /head
* img
* src
* nav
* /nav

---
## Revision

The link path to every image on the webpage can be assigned using what HTML element?

???

* base
* image
* img
* path
* link
* target

Complete the code if a `<base>` URL is assigned and image is used within an OpenGraph meta-tag.

```
<head>
  <base href="http://enkipro.com/">
  <meta property='og:image'
    content='???facebook-image.jpg'>
</head>
```

???

* http://enkipro.com/
* [no path is needed]
* enkipro.com/
* base
* path

---
## Quiz

What code assigns the default of every link within the web page to open a new page?

???

* `<base target="_blank">`
* `<link target="_blank">`
* `<a target="_blank">`
* `<* target="_blank">`

