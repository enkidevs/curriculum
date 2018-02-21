# Greater and Less Than
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - workout


---
## Content

In HTML the browser assumes *<* and *>* always represent the start and end of an HTML tag. If we need to display the literal characters, *<* or *>*, we must use character entities.

You can use either an HTML entity *name* or an HTML entity *number*

HTML Entity Number
```
&#60;       &#62;
```
Result:
```
 <            >
```
HTML Entity Name
```
&lt;        &gt;
```
Result:
```
 <           >
```

Example:
```
<p>Get your AT&amp;T free first 3 months!</p>
```
Result:
```
Get your AT&T free first 3 months!
```


---
## Practice

When you are using the less than (<) or greater than (>) signs in your text, the browser can possibly mix them with tags, so it is best to use character entities instead.

???

* T


---
## Revision

In HTML, some characters on your keyboard are kept reserved and cannot be used within the content of your document; like < and >

???
* T
