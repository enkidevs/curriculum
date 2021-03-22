---
author: catalin
levels:
  - basic
type: normal
category: tip
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/18292107/ie-background-flicker){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Prevent background image flicker in **IE**


---

## Content

**Internet Explorer** proved to have problems when loading cached background images as a flicker effect commonly appear.

A quick fix is adding this **JS** script:

```javascript
<script type="text/javascript">
try {
document.execCommand
  ('BackgroundImageCache', false, true);
}
catch(e) {};
</script>

```

However, on **IE 10** this won't solve the problem. This version of the browser won't load cached images via **CSS**. As to solve this you need to force load the image:

```css
background-image: url('background1.jpg')

```

  In **HTML**:

```html
<img src='background1.jpg' 
style='display:none' />

```


---

## Practice

Force loading an image means hard-coding the image source in the html attribute *src* or in the CSS file. Bearing this in mind, complete the following snippet of code:

    < ??? ???='enki1.jpg' 
                        style='???:none' />

- img
- src
- display
- source
- background-image


---

## Revision

Flickering image bug in IE10 can be solved by ???

- force loading the image
- loading the image through a script
- uninstalling IE10
