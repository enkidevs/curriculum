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
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}'
  - '[Official documentation on w3.org](https://www.w3.org/TR/2011/WD-html5-author-20110705/the-img-element.html#dom-img-alt){documentation}'

---
# Image Alt
---
## Content

The `<img>` elements are used for embedding an image in a web page or a document.
The `alt` attribute exists to specify an alternate text for an image that cannot be displayed.

It provides extra information to the user if for some reason they cannot view the image. Whether it is a broken link, an unsupported image format, a poor internet connection, or if the user uses a screen reader.

Example:
```
<img src="rainforest.png"
    alt="Beautiful Rainy Forest">
```

In the example above, if for some reason the browser doesn't show the `rainforest.png` image, the `alt` attribute will display the `Beautiful Rainy Forest` text instead.
For the reasons mentioned above, it is good practice to provide useful information in the alt attribute.

Using the `alt` attribute is important for every `img` element for page validation and to help support screen readers.

The `alt` attribute can also be left empty:
```
<img src="rainforest.png"
      alt="">
```

This is helpful for indicating that the image is not a key part of the content. Meaning, non-graphical browsers, or developers who don't want the picture loaded, can decide to not render it. On the other hand, eliminating the whole alt attribute means the image is a key component of the content, should be loaded and has no equivalent textual representation available.


If your alt attribute needs to contain acronyms (like "USA"), you would write it as:
```
`<img src="usa-map.jpg"
    alt="Map of the US">`
```

The reason is, you want to prevent screen readers from reading the `alt` attribute as "Map of the us" instead of
Map of the US".


---
## Practice

What is a best way to treat alt tags for images that are used in the interface and does not contain useful content for the user?

???

* Use an empty alt attribute.
* Write the description only in lowercase.
* Write the description only in uppercase.
* Don't use an alt attribute.

---
## Revision

Which description(s) of using image alt attributes is not true:

???

* Image will not display properly without an alt.
* Required on every image for page validation.
* Important to help support screen readers.
* Useful for webpage viewer when image path is broken.
* Linked image descriptions should be of the destination and not the image itself.


---
## Quiz

### Do you know the best way to write acronyms (like "USA") within image alt attribute?

Hint: The best way helps screen readers read the alt properly as it prevents "ITS in the US" from being read as "It’s in the us".

`<img src="usa-map.jpg" alt="______">`

???

* U S A
* USA
* usa
* U.S.A
* U-S-A
* "U""S""A"
