---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

aspects:
  - introduction
  - workout
  - deep

tags:

  - browsers


links:

  - '[Autoprefixer CSS Plugin Install Link](https://autoprefixer.github.io/){website}'


---

# Animations in Webkit browsers

---
## Content

Many Webkit browsers still use the `-webkit-prefixed` version of animations, keyframes, and transitions.

Until they fully adopt the standard version, it's good practice to include both versions (`unprefixed` & `webkit`) in your code:
```css
div {
  -webkit-animation-duration: 2s;
  animation-duration: 2s;
  -webkit-animation-name: bounceIn;
  animation-name: bounceIn;
}
```

`Autoprefixer` is a tool which calculates which prefixes are required and which are outdated. When autoprefixer adds prefixes to the code, it also fixes any differences the syntax may have.

---
## Revision

What's the tool called which calculates which prefixes are required and which are outdated? ???


* `Autoprefixer`
* `Prefixer`
* `Webkitprefixer`
