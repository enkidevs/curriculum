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

In HTML coding, the non-breaking space is a character entity which can:

* create white space between words or web page elements
* stop the browser from breaking a line in the wrong place.


Normally, if there are not any non-breaking spaces used, the browser will break up lines of text or content to suit the available space in your web design or the browser window. The content will flow within the space available. As the resolution of the monitor is changed, the flow of content adjusts.

> Non-Breaking Space Coding in HTML

To insert a non-breaking space you would use:

```
&nbsp;
```
>Uses for the Non-Breaking Space

**Prevent Line Break with Non-Breaking Space**

Sometimes you might want the force the browser to not break the line between certain words or web page elements. E.g. Mr. John Doe

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

The non-breaking space can be used to create white space between web page elements. In our example above with the pictures, white space between the pictures is created using the non-breaking space html coding.

**Prevent Table Cell Collapse with Non-Breaking Space**

If you use a table within your web page and have an empty cell, insert the non-breaking space HTML coding in that empty cell to prevent the cell collapsing in some browsers.

```
<td>&nbsp;</td>
```

**What Not to Use the Non-Breaking Space For**

>Creating Indented Paragraphs

Some people will use non-breaking space coding to indent a paragraph. This will not always work. Some browsers will ignore beyond the first instance of the non-breaking space. Use your stylesheet instead to create an indent at the beginning of your paragraphs.

**Problems with Non-Breaking Space**

There are some problems with using the non-breaking space HTML coding:

* Not all browsers acknowledge the additional instances of the non-breaking space.
* If you get carried away with the use of non-breaking space, it can cause the horizontal scroll bar to appear, if the browser window is not big enough.
* Using the non-breaking space HTML coding within the text or between pictures (for example) can make your content overlap the borders of the table.

Use the non-breaking space HMTL coding in moderation, if at all. Learn to manipulate the placement of your web page content using the stylesheet instead.




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
