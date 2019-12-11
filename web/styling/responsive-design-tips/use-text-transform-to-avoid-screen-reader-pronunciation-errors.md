---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

aspects:
  - introduction
  - workout

links:

  - '[CSS for Accesibility](http://24ways.org/2007/css-for-accessibility){article}'
  - '[47 CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){article}'

---

# Use `text-transform` to avoid screen-reader pronunciation errors

---
## Content

A screen-reader handling CONTACT US (in uppercase) would be read out "Contact U S", which is not correct.

By using `text-transform: uppercase`, you don't have to write in uppercase in the HTML and so the separation of content and style is preserved.

For instance:

```html
 <div class="bad"> CONTACT US </div>
 <div class="good"> Contact us </div>
```
```css
.good {
  text-transform: uppercase;
  /* will render text in uppercase */
}
```

---
## Practice

Display the following paragraph as uppercase:
```css
p.upper{
  ???: uppercase;
}
```

* `text-transform`
* `text-style`
* `text-decoration`
* `font-style`

---
## Revision

What is the key benefit and use case of `text-transform`?

 ???

* It avoids pronunciation errors and preserves styles.
* It can render text in uppercase.
* It can render text in lowercase.
