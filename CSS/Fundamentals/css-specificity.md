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