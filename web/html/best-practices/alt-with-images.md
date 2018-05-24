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

The alt attribute exists to specify an alternate text for an image that cannot be displayed.
It provides information to the user if for some reason they cannot view the image.

Example:
```
<!DOCTYPE html>
<html>
<body>

<img src="brokenglass.gif"
  alt="Broken glass">

</body>
</html>

```
If the browser does not recognize the "brokenglass.gif" file, it will instead display what's in the alt property.

```
Broken glass
```

Like in the example above, the `alt` attribute should describe an image if that image contains information.

However, if the image is only for decoration, then the `alt=""` can be left empty.

---
## Practice

Is an empty alt attribute considered appropriate?

```
<img src=”image.png” alt=””>
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
