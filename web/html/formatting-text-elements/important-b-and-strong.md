---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

links:

  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  - '[MDN docs for b](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/b){website}'
  - '[MDN docs for strong](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong){website}'
  - '[CodePen: strong & b](https://codepen.io/enkidevs/pen/mjRemb){code}'
  - '[CodePen: strong & b (2)](https://codepen.io/enkidevs/pen/NBdGvb){code}'
  - '[MDN docs for globat attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'


---
# Important (b & strong)
---
## Content

The HTML `<b>`, or the ** Bring Attention To** element, is used to bring readers attention to some text and `<strong>`, or the **Strong Importance** element, is used to give importance to some content.

The `<b>` element was also formerly known as the **Boldface** element.

Example:
```
<p>
  <strong>Warning</strong>:
  The latest
  <b>iPhone</b> is expensive.
</p>
```
Result:

![element-strong-b](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Bold%2C%20Roboto%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EWarning%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2279.44531%22%20y%3D%2234%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-weight%3D%22normal%22%3E%3A%20The%20latest%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22161.49219%22%20y%3D%2234%22%3EiPhone%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22211.66406%22%20y%3D%2234%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-weight%3D%22normal%22%3E%20is%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-weight%3D%22normal%22%3Eexpensive.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/mjRemb)-->

The HTML `<strong>` and `<b>` elements appear similar since they both have the same default styling, **bold**, but they both identify the content differently.   

Example:
```
<strong>
  Attention!
</strong>
The floor is
<b>slippery</b>
 and <b>wet</b>!
```
Result:

![element-strong-b-2](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Bold%2C%20Roboto%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EAttention!%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2291.0625%22%20y%3D%2234%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-weight%3D%22normal%22%3E%20The%20floor%20is%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22178.3125%22%20y%3D%2234%22%3Eslippery%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22235.69531%22%20y%3D%2234%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-weight%3D%22normal%22%3E%20and%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Ewet%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2245.8125%22%20y%3D%2253%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-weight%3D%22normal%22%3E!%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/NBdGvb)-->


In the above example, the `<strong>` element is used to specify that the word `Warning` is very important and the `<b>` element is used to give attention to a text `iPhone` without giving it a higher importance.

Rather than wrapping `<b>` or `<strong>` elements around text that is only meant to be used for visually styling purposes, it is more appropriate in those cases to use the CSS property `font-weight:bold;`.

---
## Practice

Write the code to properly express extra importance on key words in this sentence:

`<p>`<???>Warning<???>: The latest <???>iPhone<???> is expensive.`</p>`

* strong
* /strong
* b
* /b
* em
* /em
* i
* /i


---
## Revision

When text needs to bring users attention, you should use which element?

???

When a text needs to be presented with strong importance, seriousness, or urgency for its contents, you should use which element?

???

* `<b>`
* `<strong>`
* `<em>`
* `<i>`
* `<important>`

---
## QUIZ

### How much do you know about HTML text?

Write the code to properly express extra importance to key words :

```
<h2>Things To Do</h2>
<ul>
  <li>
    <???>Do Now:<???> Call Mum
  </li>
  `<li>`Buy <???>Lord of the Flies<???>
      book`
   </li>`
  <li>
    Fix screen on
    <???>iPhone<???>
  </li>
</ul>
```

* strong
* /strong
* em
* /em
* b
* /b
* cite
* /cite
* i
* /i
