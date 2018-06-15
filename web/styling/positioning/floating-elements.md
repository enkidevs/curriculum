---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/float){documentation}'


---

# Floating Elements

---
## Content

Another way to position elements on page is with `floats`. This property allows elements to be positioned to the left or right side of the parent element. All other elements will flow around the floated element.

One use-case is floating an image to the side of a block of text, as the text will surround the image:
```
#imageleft{
  float: left;
  width: 150px;
  height: 150px;
}
#imageright{
  float: right;
  width: 150px;
  height: 150px;
p{
  font-size: 30px;
  font-color: #ffffff;
}
```

![min.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M8%2018h150v150H8V18M658%2018h150v150H658V18%22%20fill=%22#ff4500%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22158%22%20y=%2246%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3EThis%20is%20some%20text.This%20is%20some%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22158%22%20y=%2282%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3Etext.This%20is%20some%20text.This%20is%20some%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22158%22%20y=%22118%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3Etext.This%20is%20some%20text.This%20is%20some%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22158%22%20y=%22154%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3Etext.This%20is%20some%20text.This%20is%20some%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22158%22%20y=%22190%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3Etext.This%20is%20some%20text.This%20is%20some%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%228%22%20y=%22226%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3Etext.This%20is%20some%20text.This%20is%20some%20text.This%20is%20some%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%228%22%20y=%22262%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3Etext.This%20is%20some%20text.This%20is%20some%20text.%3C/text%3E%3C/g%3E%3C/svg%3E)

It can also be used to align elements to the side of the last one:
```
.elem{
  width: 120px;
  height: 100px;
  margin: 15px;
}
.leftelem{
  float: left;
}
.rightelem{
  float: right;
}

```
And the HTML:
```html
<div class="elem leftelem">Left</div>
<div class="elem leftelem">Left</div>
<div class="elem leftelem">Left</div>
<div class="elem rightelem"
  id="first-right-elem">Right</div>
<div class="elem rightelem">Right</div>
<div class="elem rightelem">Right</div>
```

![woclearmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M23%2023h120v100H23V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%2258.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ELeft%3C/text%3E%3Cpath%20d=%22M173%2023h120v100H173V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22208.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ELeft%3C/text%3E%3Cpath%20d=%22M323%2023h120v100H323V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22358.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ELeft%3C/text%3E%3Cpath%20d=%22M673%2023h120v100H673V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22697.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERight%3C/text%3E%3Cpath%20d=%22M523%2023h120v100H523V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22547.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERight%3C/text%3E%3Cpath%20d=%22M673%20153h120v100H673V153%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22697.5%22%20y=%22181%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERight%3C/text%3E%3C/g%3E%3C/svg%3E)

However, this might not be the layout we were looking to achieve. As there is space left for 2 more rectangle on the first line, `float:right` will position them in the empty space.

To push all right floating elements on the next line, we have to use a property called `clear`. This property doesn't allow any `float` elements to the side specified by its value. The three most used values are: `left`, `right` and `both`.

Because we want the first right element to start on a new line, we have to `clear` floating elements to the left of it:
```
#first-right-elem{
  clear:left;
}
```
And the result will be:

![clearmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M23%2023h120v100H23V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%2258.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ELeft%3C/text%3E%3Cpath%20d=%22M173%2023h120v100H173V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22208.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ELeft%3C/text%3E%3Cpath%20d=%22M323%2023h120v100H323V23%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22358.5%22%20y=%2251%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ELeft%3C/text%3E%3Cpath%20d=%22M673%20153h120v100H673V153%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22697.5%22%20y=%22181%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERight%3C/text%3E%3Cpath%20d=%22M523%20153h120v100H523V153%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22547.5%22%20y=%22181%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERight%3C/text%3E%3Cpath%20d=%22M373%20153h120v100H373V153%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22397.5%22%20y=%22181%22%20font-family=%22inherit%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERight%3C/text%3E%3C/g%3E%3C/svg%3E)

---
## Revision

Text ??? a floated element.


* surrounds
* pushes
* overlaps
* underlaps

