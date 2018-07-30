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
```html
<img src="waterfall.jpg"
  alt="Niagara Falls during Sunset">
```
If the "waterfall.jpg" image doesn't load properly, it will display a broken image icon using the alt text like this: 

![alt-tag-broken-image](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22100%%22%20height%3D%2260%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2260%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2237%22%20y%3D%2237%22%3ENiagara%20Falls%20during%20Sunset%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20fill-rule%3D%22nonzero%22%3E%3Cpath%20fill%3D%22%238D8D8D%22%20d%3D%22M19.5%2039.15V38h-.05v1.15h.05z%22%2F%3E%3Cpath%20fill%3D%22%237BC274%22%20d%3D%22M21.75%2036.9H20.6V38h1.15v-1.1z%22%2F%3E%3Cpath%20fill%3D%22%239FC6B7%22%20d%3D%22M24.05%2033.45H22.9v1.15h1.15v-1.15zm-2.3%202.25v.05h1.15V34.6h-1.15v1.1zm3.4-2.25V32.3h-1.1v1.15h1.1z%22%2F%3E%3Cpath%20fill%3D%22%23C7DDE6%22%20d%3D%22M21.7%2035.75h-1.1v1.15h1.15v-1.15h-.05z%22%2F%3E%3Cpath%20fill%3D%22%23C2D0EE%22%20d%3D%22M24.05%2032.3h-2.3v2.3h1.15v-1.15h1.15V32.3zm7.95%200h-1.1v1.15h1.15V32.3H32z%22%2F%3E%3Cpath%20fill%3D%22%23D7E2FA%22%20d%3D%22M21.75%2026.55V24.3H20.6v11.45h1.15v-9.2z%22%2F%3E%3Cpath%20fill%3D%22%23D0DDF8%22%20d%3D%22M24.05%2024.3h-2.3v2.25h1.15v-1.1h1.15V24.3zm4.55%202.25V24.3h-2.3v1.15h1.15v1.1h1.15z%22%2F%3E%3Cpath%20fill%3D%22%23E0E9F8%22%20d%3D%22M21.75%2023.15H20.6v1.15h1.15v-1.15zm8%200H28.6v1.15h1.15v-1.15z%22%2F%3E%3Cpath%20fill%3D%22%239B9B9B%22%20d%3D%22M19.5%2020.85h-.05V38h.05V20.85z%22%2F%3E%3Cpath%20fill%3D%22%23A0A0A1%22%20d%3D%22M20.6%2022v-1.15h-1.1V38h1.1V22z%22%2F%3E%3Cpath%20fill%3D%22%23F3F7FD%22%20d%3D%22M21.75%2022H20.6v1.15h1.15V22zm12.6%204.55H33.2v1.15h1.15v-1.15z%22%2F%3E%3Cpath%20fill%3D%22%23838384%22%20d%3D%22M24.5%2039.15h1.8V38h-6.8v1.15h5zM33.2%2038h-3.45v1.15h5.7V38H33.2z%22%2F%3E%3Cpath%20fill%3D%22%2356B33E%22%20d%3D%22M33.2%2036.9h-2.3V38h2.3v-1.1zm-6.9-4.6v1.15h-2.25v1.15H22.9v1.15h-1.15V38h5.7v-1.1h1.15v-1.15h1.15V34.6h1.15v-1.15h-2.3V32.3h-2.3z%22%2F%3E%3Cpath%20fill%3D%22%238DC78D%22%20d%3D%22M34.35%2036.9H33.2V38h1.15v-1.1z%22%2F%3E%3Cpath%20fill%3D%22%236CB866%22%20d%3D%22M33.2%2035.75h-1.15v1.15h1.15v-1.15z%22%2F%3E%3Cpath%20fill%3D%22%23D5E1F8%22%20d%3D%22M33.2%2034.6v2.3h1.15v-2.3H33.2z%22%2F%3E%3Cpath%20fill%3D%22%23B4CCD6%22%20d%3D%22M30.85%2032.3h-1.1v1.15h1.15V32.3h-.05z%22%2F%3E%3Cpath%20fill%3D%22%23C6D4F1%22%20d%3D%22M26.3%2031.15h6.9V30H21.75v1.15h4.55z%22%2F%3E%3Cpath%20fill%3D%22%236CB761%22%20d%3D%22M28.6%2033.4v.05h1.15V32.3H28.6v1.1z%22%2F%3E%3Cpath%20fill%3D%22%23C5D2F1%22%20d%3D%22M26.3%2032.3v-1.15h-4.55v1.15h4.55zm2.3-1.15v1.15h4.6v-1.15h-4.6z%22%2F%3E%3Cpath%20fill%3D%22%2354AD3C%22%20d%3D%22M26.3%2032.35v-.05h-1.15v1.15h1.15v-1.1z%22%2F%3E%3Cpath%20fill%3D%22%23B6CFD7%22%20d%3D%22M28.6%2032.25v-1.1h-2.3v1.15h2.3v-.05z%22%2F%3E%3Cpath%20fill%3D%22%23CAD9F4%22%20d%3D%22M28.6%2028.85V27.7h-6.85v1.15h6.85z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M27.45%2026.55v-1.1H26.3V24.3h-2.25v1.15H22.9v1.1h-1.15v1.15h5.7v-1.15zm8%203.45h-1.1v1.15H33.2v1.15h-1.15v1.15H30.9v1.15h-1.15v1.15H28.6v1.15h-1.15V38H26.3v1.15h3.45V38h1.15v-1.1h1.15v-1.15h1.15V34.6h1.15v-1.15h1.1V30zM32%2023.15h-1.1v2.3h2.3V24.3h-1.15v-1.15H32zm.05-2.3V22h1.15v1.15h1.15v1.15h1.1v-3.45h-3.4z%22%2F%3E%3Cpath%20fill%3D%22%23CDDAF6%22%20d%3D%22M28.6%2026.55h-1.15v1.15h1.15v-1.15z%22%2F%3E%3Cpath%20fill%3D%22%23D0DAF1%22%20d%3D%22M29.75%2027.7v-1.15H28.6v1.15h1.15z%22%2F%3E%3Cpath%20fill%3D%22%23DAE4FA%22%20d%3D%22M34.3%2028.85h-1.1v2.3h1.15v-2.3h-.05z%22%2F%3E%3Cpath%20fill%3D%22%23E3EBFB%22%20d%3D%22M33.2%2028.85h1.15V27.7H33.2v1.15z%22%2F%3E%3Cpath%20fill%3D%22%23D6E0F6%22%20d%3D%22M30.9%2027.7v1.15h2.3V27.7h-2.3z%22%2F%3E%3Cpath%20fill%3D%22%23CEDBF5%22%20d%3D%22M29.75%2028.85V27.7H28.6v1.15h1.15z%22%2F%3E%3Cpath%20fill%3D%22%23C7D6F3%22%20d%3D%22M30.85%2028.85h-9.1V30H33.2v-1.15h-2.35z%22%2F%3E%3Cpath%20fill%3D%22%23D3DFF6%22%20d%3D%22M29.75%2028.85h1.15V27.7h-1.15v1.15z%22%2F%3E%3Cpath%20fill%3D%22%23E6EBFA%22%20d%3D%22M30.85%2026.55h-1.1v1.15h1.15v-1.15h-.05z%22%2F%3E%3Cpath%20fill%3D%22%23D7E1F7%22%20d%3D%22M29.75%2026.55V24.3H28.6v2.25h1.15z%22%2F%3E%3Cpath%20fill%3D%22%23EEF3FB%22%20d%3D%22M33.2%2026.55h-2.3v1.15h2.3v-1.15z%22%2F%3E%3Cpath%20fill%3D%22%239F9F9F%22%20d%3D%22M34.35%2024.3H33.2v1.15h1.15V24.3zm-1.15-1.15h-1.15v1.15h1.15v-1.15zM32.05%2022H30.9v1.15h1.15V22z%22%2F%3E%3Cpath%20fill%3D%22%23909092%22%20d%3D%22M35.45%2033.45h-1.1V38h1.1v-4.55zm0-8h-1.1V30h1.1v-4.55z%22%2F%3E%3Cpath%20fill%3D%22%23F5F5F5%22%20d%3D%22M35.45%2024.3h-1.1v1.15h1.1V24.3zm-1.15-1.15h-1.1v1.15h1.15v-1.15h-.05zm-2.25-.05v.05h1.15V22h-1.15v1.1zm0-1.95v-.3H30.9V22h1.15v-.85z%22%2F%3E%3Cpath%20fill%3D%22%23A2A2A2%22%20d%3D%22M29.75%2021.95v-1.1H20.6V22h9.15v-.05z%22%2F%3E%3Cpath%20fill%3D%22%23919191%22%20d%3D%22M30.9%2020.85h-1.15v5.7h4.6v-1.1H30.9v-4.6z%22%2F%3E%3Cpath%20fill%3D%22%23DBE4F9%22%20d%3D%22M28.6%2023.15h-6.85v1.15h6.85v-1.15z%22%2F%3E%3Cpath%20fill%3D%22%23F1F6FC%22%20d%3D%22M26.75%2023.15h3V22h-8v1.15h5z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Every image needs the alt tag to pass validation, but when the image is only for decoration, then the description can be left empty like this:
```html
<img src="background-texture.jpg"
  alt="">
```

---
## Practice

Is an empty alt attribute considered appropriate?

```html
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
 * Screen readers can use alt text to help users that are visually impaired.
