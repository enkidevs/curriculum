---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to

aspects:
  - introduction
  - workout

links:

  - '[How to Flip Images](http://stackoverflow.com/questions/28583629/how-to-make-images-flip-rotate-using-css){discussion}'


---

# How to flip an image

---
## Content

The **CSS** `transform` property lets you modify the coordinate space of the CSS visual formatting model. Using it, elements can be translated, rotated, scaled, and skewed.


```css
img {
  transform: scaleX(-1);
}
```

The `scale()` method increases or decreases the size of an element (according to the parameters given for the width and height). `scaleX()` will only change modify the width of an image. Passing it the value `-1` will horizontally flip the image.


![HtmlToSvgmin.svg](https://img.enkipro.com/485ec2720c02f63cab710e6573e11ec8.png)

---
## Practice

Which method is used to modify the width of an image?

???


* `scaleX`
* `scaleW`
* `width-alter`
* `scaleY`

---
## Revision

What value is needed as an argument in the `scaleX()` function to horizontally flip an img?
```css
img {
   transform: scaleX(???);
}
```

* -1
* 1
* 0
* 2
* 0.5
* -0.5

---
## Quiz

### how will the following line affect an image?

How does the following line affect an image?

```css
img { transform: scaleX(-1); }
```

 ???

* It horizontally flips the image
* It vertically flips the image
* It rotates the image 180 degrees
* The image will look just the same
