---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - convert
  - png
  - gif
  - ImageMagic
links:
  - '[www.imagemagick.org](http://www.imagemagick.org/Usage/){website}'
revisionQuestion:
  formats:
    - type-in-the-gap
  context: standalone
---

# Image manipulation using `convert`


---

## Content

`convert`[1] can be used to change image formats as well as resize, crop, rotate and many other options. Its basic structure is:

```bash
convert [in-opts] in-file [out-opts]
      out-file
```

For example:

```bash
convert Dog.png -resize x250 -rotate 90
  -quality 90% -charcoal 5 newDog.jpg
```

The above will resize the *height*[2] to 250, *rotate* the picture 90 degrees to the right, reduce its *quality* to 90% , apply an *effect*[3] of strength 5 and finally changing its format to a `.jpg`.


---

## Revision

Use the `convert` command to resize the height of `enki.png` to `200` and rename it `newEnki.jpg`:

```bash
??? enki.png ??? ??? newEnki.jpg
```

- `convert`
- `-resize`
- `x200`
- `--resize`
- `200px`
- `200`
- `-toJPG`


---

## Footnotes

[1:Where to get it]
Part of the `imagemagick` suite of tools.
[2:Size]
Resizing both width and height requires 250x250, while resizing the width requires only 250.
[3:Range]
The strength range depends on the effect type.
