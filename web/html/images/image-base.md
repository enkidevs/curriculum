---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.0: 10

aspects:
  - introduction
  - workout
  - obscura

links:
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base){documentation}'

---
# Image Base
---
## Content

The `<base>` element is used to specify a link path for all relative URL attributes. There can be only one `<base>` element per page or document, and it is written inside the `<head>` element. If more than one `<base>` element is present, only the first `href` and `target` values are used, while the others are ignored.

Also, the `<base>` element cannot be empty, it must contain either the target attribute, the href attribute, or both of them.

All links in the web page or document are set to open in a new tab:

```
<head>
   <base
      target="_self">
</head>
```

All links in the web page or document will lead to the `https://www.enki.com` link:
```
<head>
   <base
    href="https://www.enki.com">
</head>
 ```

All links in the web page or document will lead to the `https://www.enki.com` link, and open in a new tab:
```
<head>
   <base href="https://www.enki.com"
      target="_blank">
</head>
```

**Note: In HTML5 the `<base>` end tag has to be omitted. On the other hand, in XHTML it has to be closed.**

---
## Practice

Assign the link path for every image on the webpage:

```
<???>
  <??? ???>
<???>
```

* `head`
* `base`
* `href="http://www.enkipro.com/images/"`
* `/head`
* `img`
* `src`
* `nav`
* `/nav`

---
## Revision

The link path to every image on the webpage can be assigned using what HTML element?

???

Complete the code if a `<base>` URL is assigned and an image is used within an OpenGraph meta-tag.

```
<head>
  <base href="http://enkipro.com/">
  <meta property='og:image'
    content='???facebook-image.jpg'>
</head>
```

???

* `base`
* `http://enkipro.com/`
* `image`
* `link`
* `target`
* `[no path is needed]`
* `enkipro.com/`
* `path`

---
## Quiz

### What code assigns the default of every link within the web page to open a new page?

???

* `<base target="_blank">`
* `<link target="_blank">`
* `<a target="_blank">`
* `<* target="_blank">`
