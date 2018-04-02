---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - obscura
  - introduction
---
# Alt with images
---
## Content

The alt attribute exists to specify an alternate text for an image that cannot be displayed.
It provides information to the user if for some reason they cannot view the image.

Example:
```
<!DOCTYPE html>
<html>
<body>

<img src="brokenglass.gif" alt="Broken glass">

</body>
</html>

```
Here the browsers does not recognize the "brokenglass.gif" file, so instead, the alt property is displayed.

```
Broken glass
```

Like in the example above, the alt attribute should describe an image if that image contains information.

However, if the image is only for decoration, then the `alt=""` can be left empty.

---
## Practice

Is an empty alt attribute considered appropriate?

???
???
???
???
???

* <img src=”image.png” alt=””>
* Yes, when the image is purely decorative.
* No, a value is always required.
* No, as the image will not properly display.
* …
