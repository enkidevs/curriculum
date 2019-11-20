---
author: nene

levels:

  - advanced

type: normal

category: how to

aspects:
  - workout
  - deep

tags:

  - responsive design

  - layout

  - images


links:

  - '[Responsive Web Design](http://learn.shayhowe.com/advanced-html-css/responsive-web-design/){article}'
  - '[Web Design Basics](https://developers.google.com/web/fundamentals/layouts/rwd-fundamentals/use-media-queries?hl=en){website}'

parent: using-media-rule-to-create-cross-platform-responsiveness

---

# Responsive images in a layout

---
## Content

It's good practice to have conditional breakpoints for responsive images.

This way, they're displayed in columns so that when they get too small, the columns will collapse.

To do this, make use of media queries.

```css
/* For small devices (e.g. smartphones) */
img {
  max-width: 100%;
  display: inline-block;
}
/* For medium devices (e.g. tablets) */
@media (min-width: 420px) {
  img {
    max-width: 48%;
  }
}
/* For large devices (e.g. desktops) */
@media (min-width: 760px) {
  img {
    max-width: 24%;
  }
}
```

In this example, the images will show up in one column on smartphones, two columns on tablets, and four columns on larger screens.

---
## Revision

Complete the following snippets such that the `max-width` of your `img`s is set to `50%` on devices with a screen size at least 450px:
```css
img {
   max-width: 70%;
}

??? (min-width: ???) {
   img {
     ???: 50%
   }
}
```


* `@media`
* `450px`
* `max-width`
* `min-width`
* `width`
* `tablet`
* `screen-size`
* `@resize`
