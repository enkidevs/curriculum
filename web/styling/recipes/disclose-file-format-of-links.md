---
author: catalin

levels:

  - medium

type: normal

category: how to

aspects:
  - workout
  - deep

links:

  - '[Article on Content](https://css-tricks.com/almanac/properties/c/content/){article}'


---

# Disclose file format of links

---
## Content

To indicate what type a download link is (such as a `doc` or a `pdf`) via an image, use the **CSS** `content` property.


```css
[href$=".pdf"]::after{
content: url("myImgUrl.png");
}

```

The code snippet above will display at the end of any link ending on `.pdf` (any link to a pdf file), with the help of `::after` selector the image hosted at `myImgUrl.png`.

![HtmlToSvgmin.svg](https://img.enkipro.com/8f26f9636061d223af5673454e35cf06.png)

---
## Revision

A CSS selector that targets links which resolve to a *pdf* file is:

???


* `a[href$=".pdf"]`
* `a.pdf`
* `[href="pdf"]`
* `a[after=".pdf"]`
