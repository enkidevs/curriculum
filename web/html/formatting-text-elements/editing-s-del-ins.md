---
author: shoutmatt

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - '[CodePen: s Element](https://codepen.io/enkidevs/pen/LBxVxz){code}'
  - '[CodePen: del & ins Element](https://codepen.io/enkidevs/pen/ejgNyd){code}'

---
# Markup for Editing
---
## Content

### Strikethrough Text

The HTML `<s>`,  or the **Strikethrough Text** element, is used to create a strikethrough in a text. This is usually used to specify that some text is no longer correct or relevant.

Example:
```
I have $40 left in my account.
I have <s>$40</s> $35 left in my account
```
Strikethrough Text Result:

![editing-elements-s](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EI%20have%20%2440%20left%20in%20my%20account.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2264%22%3EI%20have%20%2440%20%2435%20left%20in%20my%20account.%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23000%22%20stroke-linecap%3D%22square%22%20d%3D%22M66.5%2059.5h26%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/LBxVxz)-->

**Notes:** If you want to indicate a document edit, don't use the `<s>` element, you should use the `<del>` and/or `<ins>` elements instead.

### Deleted & Inserted Text

Next, the `<del>`, or the **Deleted Text** element, is used to specify that some text has been deleted and the `<ins>`, or the **Inserted Text** element, is used to indicate that some text was inserted/added to the document.

Both elements have the same 2 element-specific attributes:
  1. `cite`
  2. `datetime`

The `cite` attribute is used to specify the URL which explains the change.

The `datetime` attribute is used to indicate the time of the change and the date has to be properly specified (YYMMDD), otherwise it won't parse properly and the element won't have a time stamp.

The `<del>` element is usually rendered with strikethrough text, whereas the `<ins>` is usually rendered with underlined text.

```
<del><p>Old Text</p></del>
<ins><p>New Text</p></ins>
```
Result:

![editing-elements-del-ins](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EOld%20Text%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2264%22%3ENew%20Text%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23000%22%20stroke-linecap%3D%22square%22%20d%3D%22M20.5%2029.5h58M21%2067h65%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/ejgNyd)-->

---
## Practice

Cross out the text "$100":

```
<p>
  Try and get flights under
  <tag>$100</tag> $200!
</p>
```

tag = ???

Display the first list item as deleted text.
Then display the third and fourth items as inserted text.

```
<ol>
 <li><tag1>Book flights</tag1></li>
 <li>Uber to airport</li>
 <li><tag2>Redeye 11:30pm.</tag2></li>
 <li><tag2>Sleep (if possible).</tag2></li>
</ol>
```

tag1 = ???
tag2 = ???

* s
* del
* ins
* cross
* out
* insert
* delete
* d
* i

---
## Revision

Match these elements with their meaning:

???: defines text that is no longer correct, accurate or relevant.
???: defines text that is replaced or deleted text.
???: defines text that has been inserted.

* s
* del
* ins
* strike
* delete
* cross
* highlight

---
## Quiz

### How much do you know about formatting text elements?

Mark the false statement:

???

* The `<del>` tag defines elements that are being delayed during the start of an animation.
* Avoid using the `<u>` element where it can be confused with links.
* It is best to use `<ins>` together with `<del>` to properly showcase text updates to a document.
* The `<s>` element that defined strikethrough is used to represent text that is no longer correct.
*  The `<s>` and `<del>` elements visually appear the same by default but have different semantic meaning.
