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
  - '[Codepen Example](https://codepen.io/stefan-stojanovic/pen/wXXoyJ?editors=1000){code}'
  
---
# Iframe-examples
---
## Content


Example with link:
```
<iframe
  src="https://facebook.com"
  width="300" height="300">
</iframe>

<a 
  href="https://facebook.com">
  Visit website here
</a>
```

Example with `title` attribute:
```
<iframe 
  title="Google search engine" 
  src="https://google.com">
</iframe>
```

Example of a map:
```
<iframe
 title="Map Of Chicago"
 width="600" 
 height="450" 
 src="https://www.google.com/maps/embed?
    pb=!1m18!1m12!1m3!1d397851.63336075
    91!2d-88.01146164465845!3d41.833905
    83822228!2m3!1f0!2f0!3f0!3m2!1i1024
    !2i768!4f13.1!3m3!1m2!1s0x880e2c3cd
    0f4cbed%3A0xafe0a6ad09c0c000!2sChic
    ago%2C+IL%2C+USA!5e1!3m2!1sen!2srs!
    4v1529735883459"
 allowfullscreen>
</iframe>
<a href="link-to-chicago-google-maps">
  Check on google maps here
</a>
```

Targeting response with link to an `<iframe>` element:
```
<iframe 
  src="http://www.apple.com"
  name="my-frame">
</iframe>
<p>
  <a href="http://www.enkipro.com" 
    target="my-frame">
    Click to link.
  </a>
</p>
```


---
## Practice

Write the code to display the website enkipro.com within a web page.

```
<??? 
  ???="???">
</???>
```

* `iframe`
* `src`
* `http://enkipro.com`
* `/iframe`
* `href`
* `frame`
* `/frame`


---
## Revision

Write the code to display a map within a web page.

```
<??? 
 ???="Map Of France"
 width="500" 
 height="500" 
  ???="???">
</???>
```

* `iframe`
* `title`
* `src`
* `https://www.google.com/maps/embed...`
* `/iframe`
* `href`
* `frame`
* `/frame`

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

