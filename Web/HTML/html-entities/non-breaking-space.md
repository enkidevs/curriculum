# Non-breaking Space
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

In HTML, the non-breaking space is a character entity which can:

* Create white space between words or web page elements
* Stop the browser from breaking a line in the wrong place.


To insert a non-breaking space you would use either the HTML entity *name* or the HTML entity *number* :

HTML Entity Number
```
&#160;
```
HTML Entity Name
```
&nbsp;
```

>Uses for the Non-Breaking Space

**Prevent Line Break with Non-Breaking Space**

Sometimes you might want the force the browser to not break the line between certain words or web page elements. To do so, you insert the non-breaking space between words you don't want to be separated. E.g. Mr. John Doe:

Input:
```
Mr.&nbsp;John&nbsp;Doe
```
Result:
```
Mr. John Doe
```

Another example of forcing the browser to keep things together might be a space between 2 pictures.

Input:
```
<p>
<img src="http://i.picresize.com/images
  /2018/02/18/N8MeY.png"/>&nbsp;<img
  src="http://i.picresize.com/images
  /2018/02/18/N8MeY.png" /></p>
```

Result:

![alt text][logo]
![alt text][logo]

[logo]: http://i.picresize.com/images/2018/02/18/N8MeY.png

**Create Whitespace with Non-Breaking Space**

The non-breaking space can be used to create white space between web page elements. Like in the example above, white space is created between the 2 pictures by using the non-breaking space.

**Prevent Table Cell Collapse with Non-Breaking Space**

If you have a table with an empty cell within your web page, you should insert the non-breaking space HTML coding in the empty cell to prevent the cell from collapsing.

```
<td>&nbsp;</td>
```

**What Not to Use the Non-Breaking Space For**

>Creating Indented Paragraphs

Non-breaking space should not be used to indent a paragraph. This is because some browsers ignore multiple instances of the non-breaking space so indenting this way may not always work. To create an indent for your paragraphs it is better to use your stylesheet.

---
## Practice

What HTML character entity is used to prevent the browser from breaking the line between certain words or web page elements?

???

What does the &nbsp; code do in this line of code?
      <p>Using Enki&nbsp;Pro has been helpful learning code.</p>

???

What does the &nbsp; code do in this line of code?
      <p><img src="image1.png" alt="">&nbsp;<img src="image2.png" alt=""></p>

???

What does the &nbsp; code do in this line of code?
      <td>&nbsp;</td>

???

* Non-breaking space
* The non-breaking space prevents the browser from breaking the line between the words Enki and Pro.
* The non-breaking space adds an empty character of space between the images.
* The non-breaking space prevents an empty cell in a table from collapsing.


---
## Revision

Non-breaking spaces are useful for creating indented paragraphs.

???
* F
