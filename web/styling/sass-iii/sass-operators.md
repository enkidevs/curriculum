---
author: tommarshall

levels:

  - basic

  - medium

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:

  - '[Article on Sass Operators](http://webstandardssherpa.com/reviews/getting-started-with-sass-part-2/){article}'


---

# Sass Operators

---
## Content

*Sass* has a number of standard mathematical operators such as the following `+`, `-`, `*`, `/`, and `%`.

*Sass* allows us to carry out numeric operations in code, with the generated CSS code consisting of the calculated value.

Operators will only work for numbers with compatible units. For example:

```css
h1 {
  // compatibility error
  font-size: 3px + 8em;
  // generated as 3px + 8em
  font-size: unquote("3px + 8em");
  // generated as 9px
  font-size: 7px + 2px;
}
```
Using variables along with plain CSS with numeric operators:
```css
p {
  $font-size: 12px;
  $line-height: 30px;
  font: #{$font-size}/#{$line-height};
}
```
Would generate this CSS:
```css
p {
  font: 12px/30px;
}
```

---
## Practice

Fill the gaps such that `font` will be equal to the division of `font-size` and `line-height` :
```css
p {
  $font-size: 12px;
  $line-height: 30px;
  font: #{???}???#{???};
}
```

* `$font-size`
* `/`
* `$line-height`
* `font-size`
* `line-height`
* `\`

---
## Revision

Fill the gaps such that `font` will be equal to the division of `font-size` and `line-height` :
```css
p {
  $font-size: 12px;
  $line-height: 30px;
  font: #{???}???#{???};
}
```

* `$font-size`
* `/`
* `$line-height`
* `font-size`
* `line-height`
* `\`
