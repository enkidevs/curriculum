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

Some characters in HTML are reserved. These characters must be replaced with character entities.
Character entities are used to display reserved characters in HTML.

In HTML the browser assumes *<* and *>*  are the start and end of an HTML tag, so If you use the less than *<* or greater than *>* sings in your text, the browser can mix them up with tags, so it is best to use character entities instead.

You can use either an entity *name* or an entity *number*

HTML Entity Number

Source code:
```
&#60;       &#62;
```
Result:
```
 <            >
```

HTML Entity Name

Source code:
```
&lt;        &gt;
```
Result:
```
 <           >
```

Example

Source code:
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
