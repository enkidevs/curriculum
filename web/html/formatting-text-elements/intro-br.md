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
  - '[CodePen: Element br](https://codepen.io/enkidevs/pen/XBpmqB){code}'
  - '[CodePen: Element br (2)](https://codepen.io/enkidevs/pen/EpZVRO){code}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Intro br
---
## Content

The `<br>`, or the **Line Break** element, is used to create a line break in a webpage or document. Line breaks can be very useful for writing poems or an address.

```
Some Text<br>Some Text<br>bla bla
```

![element-br](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2294%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2294%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3ESome%20Text%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3ESome%20Text%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2272%22%3Ebla%20bla%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/XBpmqB)-->

**Notes:**
  1) This element doesn't have a closing tag.
  2) Line breaks should never be used to separate paragraphs.
  3) Line breaks should never be used to create larger gaps between lines of text.
  
When larger visual gaps are needed around blocks of text, the `margin` CSS property should be used (such as `margin-bottom: 24px;`). 

Historical, in XHTML the line breaks are written as `<br />` which is important to know if you want to convert your HTML to XHTML or when reading various tutorials.

Address Example:
```
<p>
Apple<br>
1 Infinite Loop<br>
Cupertino, CA<br>
95014
</p>
```
Address Result:

![element-br-2](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22115%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22115%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EApple%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3E1%20Infinite%20Loop%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2272%22%3ECupertino%2C%20CA%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2291%22%3E95014%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/EpZVRO)-->

---
## Practice

Select the statement that is false about the `<br>` element. 

???

* Multiple line breaks are encouraged to create more gap between lines of text.
* Represents line breaks. 
* Should never be used to separate paragraphs. 
* Useful for writing addresses & poems.
* In HTML5, line breaks are written as `<br>`
* In XHTML, line breaks are written as `<br />`


---
## Revision

The goal is to display text like this:  
```
Apple
1 Infinite Loop
Cupertino, CA
95014
```
So what must happen to this address to display as separate lines of text within a single paragraph? 
```
<p>Apple
1 Infinite Loop
Cupertino, CA
95014</p>
```
???

* Add `<br>`'s to create each new line.
* Add paragraphs to each new line. 
* New lines should be created using line-height.
* New lines are not possible within a single paragraph.
* Nothing needs to be done to the code.

---
## Quiz

### How much do you know about styling text?

In an address, what are the preferred method(s) of changing the size of the gaps of space between the lines of text here?

```
<p>Apple<br>
1 Infinite Loop<br>
Cupertino, CA<br>
95014</p>
```

???

* set paragraph's line-height and line break's line-height. 
* set line break's height and paragraph's height
* set paragraph's margins and line break's margins.
* add additional `<br>` and `<p>` elements

