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

![min.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M75%2015h666v286H75V15%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cg%20fill=%22#596193%22%20font-size=%2226%22%20font-family=%22'Roboto',sans-serif%22%3E%3Ctext%20x=%22110%22%20y=%2237%22%3EMargin%3C/text%3E%3Ctext%20x=%22140%22%20y=%2265%22%3EBorder%3C/text%3E%3Ctext%20x=%22170%22%20y=%22100%22%3EPadding%3C/text%3E%3Ctext%20x=%22195%22%20y=%22130%22%3EContent%3C/text%3E%3C/g%3E%3Cg%20font-size=%2222%22%20font-weight=%22300%22%20font-family=%22'Roboto',sans-serif%22%3E%3Ctext%20x=%22393%22%20y=%2237%22%3E20%3C/text%3E%3Ctext%20x=%22400%22%20y=%2265%22%3E4%3C/text%3E%3Ctext%20x=%22393%22%20y=%22100%22%3E10%3C/text%3E%3Ctext%20x=%2278%22%20y=%22165%22%3E20%3C/text%3E%3Ctext%20x=%22115%22%20y=%22165%22%3E4%3C/text%3E%3Ctext%20x=%22138%22%20y=%22165%22%3E10%3C/text%3E%3Ctext%20x=%22365%22%20y=%22165%22%3E600%C3%97200%3C/text%3E%3C/g%3E%3Cpath%20d=%22M75%2015h3v3h-3v-3M738%2015h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M78%2016.5h659%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%227%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M75%20298h3v3h-3v-3M738%20298h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M78%20299.5h659%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%227%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M75%2015h3v3h-3v-3M75%20298h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M76.5%2018v279%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%228%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M738%2015h3v3h-3v-3M738%20298h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M739.5%2018v279%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%228%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M105%2040h606v236H105V40%22%20fill=%22#000%22%20fill-opacity=%22.098%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M105%2040h606v3H105v-3M105%20273h606v3H105v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M105%2040h3v236h-3V40M708%2040h3v236h-3V40%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M135%2070h546v176H135V70%22%20fill=%22#000%22%20fill-opacity=%22.098%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M135%2070h3v3h-3v-3M678%2070h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M138%2071.5h539%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%224%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M135%20243h3v3h-3v-3M678%20243h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M138%20244.5h539%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%224%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M135%2070h3v3h-3v-3M135%20243h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M136.5%2073v169%22%20stroke-dasharray=%229,9%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M678%2070h3v3h-3v-3M678%20243h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M679.5%2073v169%22%20stroke-dasharray=%229,9%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M165%20105h486v106H165V105%22%20fill=%22#000%22%20fill-opacity=%22.098%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M165%20105h486v3H165v-3M165%20208h486v3H165v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M165%20105h3v106h-3V105M648%20105h3v106h-3V105%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3C/g%3E%3C/svg%3E)

![alt description.svg](%253Csvg%2520viewBox%253D%25220%25200%2520300%2520800%2522%2520height%253D%2522auto%2522%2520xmlns%253D%2522http%253A%252F%252Fwww.w3.org%252F2000%252Fsvg%2522%253E%253Ctext%2520y%253D%252250%2522%2520fill%253D%2522red%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Eaclass%2520%252B%2520bclass%253C%252Ftext%253E%253Ctext%2520y%253D%2522110%2522%2520fill%253D%2522%252300f%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Eaclass%253C%252Ftext%253E%253Ctext%2520y%253D%2522170%2522%2520fill%253D%2522%25230f0%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Ebclass%253C%252Ftext%253E%253Ctext%2520y%253D%2522230%2522%2520fill%253D%2522orange%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%2520font-size%253D%252240%2522%253Eaclass%2520%252B%2520bclass%2520%252B%2520inline%253C%252Ftext%253E%253C%252Fsvg%253E)

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
