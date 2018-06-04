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

---
# Intro br
---
## Content

The `<br>`, or **The Line Break element** is used to create a line break in a webpage or document. Line breaks can be very useful for writing poems or an address.


Example 1:
```
Some Text<br>Some Text<br>bla bla
````
The result would be like this:
```
Some Text
Some Text
bla bla
```

**Notes:**
  1.) **This element doesn't have a closing tag.**
  2.) **Line breaks should never be used to separate paragraphs**
  3.) **Line breaks should never be used to create larger gaps between lines of text.**

3.1) **This is especially important for users who use screen reading technology. Screen readers may read the elements but not the content in between those elements.**
  
Additionally, if you do want larger gaps you should apply the `margin` CSS property to a paragraph(`<p>`) element and set the paragraph's line-height and set line break's line-height.


Also, in XHTML the line breaks are written as `<br />` which is important to know if you want to convert your HTML to XHTML.

Furthermore, this element may not have any element-specific attributes, but it does support all global attributes. More on global attributes in the `more info` section at the bottom of this insight.

Example 2:
```
<p>
Apple<br>
1 Infinite Loop<br>
Cupertino, CA<br>
95014
</p>
```
Result:
```
Apple
1 Infinite Loop
Cupertino, CA
95014
```


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

