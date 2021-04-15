---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# IMAGE


---

## Content

The `=IMAGE()` function is used to insert an image into a single cell.

The syntax is:

```plain-text
=IMAGE(url, mode, height, width)
```

The `url` is the URL of the image you want to import. It must be enclosed in quotations or be a reference to a cell with an appropriate URL. The protocol (e.g. `https://`) must be included in the URL.

> 💡 You cannot use URLs hosted on drive.google.com!

The `mode`, `height` and `width` are optional.

The `mode` is the sizing mode for the image. There are 4 possible values.

- 1 - resizes the image to fit inside the cell whilst maintaining the aspect ratio. This is the default if `mode` is excluded.
- 2 - stretches or compresses the image to fit inside the cell whilst ignoring the aspect ratio.
- 3 - leaves the image at its original size.
- 4 - allows a custom size.

The `height` is the height of the image in pixels.

The `width` is the width of the image in pixels.

To use `height` and `width` you have to set the mode to `4`.

Here is the same image with all of the above options.

![image-function](https://img.enkipro.com/3bcb9ca3ff62d5352a62f9d50c1d4e4d.png)


---

## Practice

The ??? function is used to insert an image into ???.

- =IMAGE()
- a single cell
- a single or multiple cells depending on the options
- =PHOTO()


---

## Revision

What is the `IMAGE()` function used for in Google Sheets?

???

- To insert an image into a single cell
- To insert an image into a single cell or a group of cells depending on the options
