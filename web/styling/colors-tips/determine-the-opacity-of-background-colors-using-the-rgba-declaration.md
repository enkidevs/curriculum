---
author: koenvanlent

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

tags:

  - background-color

  - alpha

  - transparency

  - opacity


links:

  - '[RGBA Browser Support](https://css-tricks.com/rgba-browser-support/){website}'


---

# Determine the opacity of background-colors using the RGBA declaration

---
## Content

Setting a background color using *rgba color values*, allows you to change the transparency of the elements' background-color.  

This method is particularly useful as it sets the opacity for a single element and not its children.


To do so use the rgba declaration:

```css
background-color: rgba(15,255,30,0.5);
```

The rgba color values are specified in the following order: red, green, blue, and alpha. For full transparency use alpha-level 0.0, fully opaque is identified by level 1.0.

In the example above, the alpha level is 0.5, hence indicating 50% opacity.

---
## Revision

For `rgba()` colour values, what do the four values stand for, in order? ???
```css
/* For example */
color: rgba(12, 255, 40, 0.3);
```

* Red, Green, Blue, Alpha
* Red, Blue, Green, Alpha
* Green, Blue, Red, Alpha
* Blue, Red, Green, Alpha
