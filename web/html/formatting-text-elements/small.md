---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - '[CodePen: Element small](https://codepen.io/enkidevs/pen/NBdxNX){code}'
  - '[CodePen: Element small (headings)](https://codepen.io/enkidevs/pen/OwWMbj){code}'
  - '[MDN docs for globat attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  
---
# Small
---
## Content

The HTML `<small>` element, often referred to as `fine print`, is used to change the font size of some text to one size smaller (from large to medium or medium to small, etc.), up to the smallest size the browsers allows.

This element is used for adding short phrases or comments, short blocks of text, a copyright notice, or other legal text.

Example:
```
<p>Enki is an educational 
technology company.</p>
<hr>
<p><small>The content is licensed 
under a <a rel="license" href="#">
Creative Commons License</a> and 
by using this site, you agree to 
our <a href="#">Terms of Use</a>
and our <a href="#">Privacy Policy
</a></small>.</p>
```

![element-small](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22194%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22194%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2296%22%20fill%3D%22%23000%22%3EThe%20content%20is%20licensed%20under%20a%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22203.04102%22%20y%3D%2296%22%20fill%3D%22%230001EE%22%3ECreative%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%22111%22%20fill%3D%22%230001EE%22%3ECommons%20License%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22127.77685%22%20y%3D%22111%22%20fill%3D%22%23000%22%3E%20and%20by%20using%20this%20site%2C%20you%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%22126%22%20fill%3D%22%23000%22%3Eagree%20to%20our%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2292.33154%22%20y%3D%22126%22%20fill%3D%22%230B00CD%22%3ETerms%20of%20Use%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22169.22705%22%20y%3D%22126%22%20fill%3D%22%23000%22%3E%20and%20our%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22219.43701%22%20y%3D%22126%22%20fill%3D%22%230B00CD%22%3EPrivacy%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%22141%22%20fill%3D%22%230B00CD%22%3EPolicy%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2254.11865%22%20y%3D%22141%22%20fill%3D%22%23000%22%3E.%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M202.5%2098.5h48m-157%2030h76m51.5.5h32M21%20144h25%22%2F%3E%3Cpath%20stroke%3D%22%23000%22%20stroke-linecap%3D%22square%22%20d%3D%22M21.5%2071.5h277%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EEnki%20is%20an%20educational%20technology%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Ecompany.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/NBdxNX)-->

By default, the font-size is generally set to .8em smaller than the existing text, which is also often 1 font size smaller. In this example the "Test" text will display at the same size:

```
<h1><small>Test</small></h1>
<h2>Test</h2>
```

![element-small-headings](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22105%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22105%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Bold%2C%20Roboto%22%20font-size%3D%2224%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2285%22%3ETest%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Bold%2C%20Roboto%22%20font-size%3D%2224%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3ETest%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/OwWMbj)-->

---
## Practice

Select the false statement about the `<small>` element. 

???

* Typical to mark up full 'Terms of Use' page.
* Changes the text font size one size smaller.
* Often referred to as "fine print".
* Best to add to phrases or short block of text.
* Useful around copyright notice

---
## Revision

What HTML element is used to make the text font size one size smaller?

???

* `<small>`
* `<smaller>`
* `<text-size>`
* `<sp>`
* `<fp>`
* `<sub>`
* `<sup>`

---
## Quiz

### How much do you know about formatting text elements?

What does the `<small>` element set the selected text to?

```
<p>
    Some actors change their names,
    like Tom Cruise 
    <small>Tom Mapother</small>.
</p>
```

* one size smaller. 
* smaller and half a character below line of text.
* smaller and half a character above line of text.
* to the smallest display size.
* to the font-size of 10px.
