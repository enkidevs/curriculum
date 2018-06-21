---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.4: 10
  web.syntax-html.6: 10

aspects:
  - introduction
  - workout
  - deep

---
# Alt with images
---
## Content

The alt attribute exists for a few reasons: 

* To help search engines understand the meaning of the image.
* To display descriptive text in place of the image if the image cannot be loaded properly. 
* Screen readers used by those with visual impairment will use this text to describe the image to the user. 

Example:
```
<img src="waterfall.jpg"
  alt="Niagara Falls during Sunset">

```
If the "waterfall.jpg" image doesn't load properly, it will display a broken image icon using the alt text like this: 

##### --> INSERT IMAGE: alt-tag-broken-image.svg

Every image needs the alt tag to pass validation, but when the image is only for decoration, then the description can be left empty like this: `alt=""`

---
## Practice

Is an empty alt attribute considered appropriate?

```
<img src="image.png" alt="">
```

???

* Yes, when the image is purely decorative.
* No, a value is always required.
* No, as the image will not display properly.
* Yes, it is always appropriate.

---
## Revision

Which statement about alt attributes is false?

???

 * Alt attributes are displayed on top of each image.
 * The alt attribute exists to specify an alternate text for an image that cannot be displayed.
 * It is used to provide information to the user if they cannot view the image.
 * Empty alt attributes are appropriate when the image is purely decorative.
