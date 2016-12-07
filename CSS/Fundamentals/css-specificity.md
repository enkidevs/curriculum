# CSS Specificity
author: Mathieu

levels:

  - basic

  - medium

  - beginner

type: normal

inAlgoPool: false

category: feature

notes: >-
  http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity){website}

  - '[standardista.com](http://standardista.com/css3/css-specificity/){website}'

---
## Content

When two or more CSS declarations apply to the same HTML element, a choice must be made about which styles to apply. For example:
```css
p.cities {
  color: red;
}
.cities {
  color: blue;
}
```
The final font `color` of `<p>` elements will be `red`, even though `.cities` class
 declaration is below `p.cities`.

This has to do with CSS specificity calculations. A general specificity is expressed by `(a, b, c, d)`.

For each element or pseudo element in the selector, `d += 1`:
```
p {} /* (0,0,0,1) */
```

For each class, pseudo class or attribute in the selector, `c += 1`:
```
.cities{} /* (0,0,1,0) */
```

For each id in the selector, `b += 1`:
```
#myParagraph{} /* (0,1,0,0) */
```

An _inline_ style has a specificity of `a=1`:
```HTML
<p style="color: red">Test</p>
```

The instruction with the *largest* specificity will have priority. To determine the largest one, concatenate *(a,b,c,d)* to obtain a 4-digit number — *(0,1,0,2)* will translate to *102* specificity — and compare it to the others.

For the following HTML code:
```html
<p class="acl bcl">AB</p>
<p class="acl">A</p>
```
And the CSS:
```
p.acl.bcl{  /* (0,0,2,1) */
  color: red;
}
p.acl{    /* (0,0,1,1) */
  color: blue;
}
p.bcl{    /* (0,0,1,1) */
  color: green;
```
In the above example, `p.acl` and `p.bcl` will have the same specificity. In the case of `p.acl.bcl` *not being there*, the cascading rule would apply, making `AB` *green*.

However, because the selector with two classes has a higher specificity, `AB` will be *red*.

If the HTML looked like this:
```html
<p class="acl bcl"
  style="color: orange">AB</p>
<p class="acl">A</p>
```
The text will be neither *green* nor *red*, but **orange**, as the inline style will have priority.

![alt description](%253Csvg%2520viewBox%253D%25220%25200%2520300%2520800%2522%2520height%253D%2522auto%2522%2520xmlns%253D%2522http%253A%252F%252Fwww.w3.org%252F2000%252Fsvg%2522%253E%253Ctext%2520y%253D%252250%2522%2520fill%253D%2522red%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Eaclass%2520%252B%2520bclass%253C%252Ftext%253E%253Ctext%2520y%253D%2522110%2522%2520fill%253D%2522%252300f%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Eaclass%253C%252Ftext%253E%253Ctext%2520y%253D%2522170%2522%2520fill%253D%2522%25230f0%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Ebclass%253C%252Ftext%253E%253Ctext%2520y%253D%2522230%2522%2520fill%253D%2522orange%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Eaclass%2520%252B%2520bclass%2520%252B%2520inline%253C%252Ftext%253E%253C%252Fsvg%253E)

Test line

---
## Practice

What is the specificity of the following CSS code snippet?
```css
p#myParagraph .acl div.bcl {}
```

???
*(0,1,2,2)
*(0,1,2,1)
*(1,1,1,2)
*(1,0,0,4)

---
## Revision

What is the specificity of the following CSS code snippet?
```css
#nav.selected a{}
```

???
* (0, 1, 1, 1)
* (0, 0, 2, 1)
* (1, 1, 2, 1)
* (0, 2, 1, 0)
* (1, 1, 1, 0)
* (1, 2, 1, 2)
