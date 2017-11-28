# what-is-a-shape-drawable
author: tlawson

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

A shape drawable is an XML that defines geometric shapes including colors, borders, and gradients which can get assigned to Views.  Drawable shapes are used to create complex shapes that can attached as a background to a layout or some view on the screen. A shape drawable is useful to change the shape, border, and gradient of a button background as an example. 

The shape can be described as properties such as corners for rounding, gradient for backgrounds, padding for spacing, solid for background colors, and stroke for border. First create a new drawable resource file by right clicking on res/drawable>New >Drawable resource file>provide a file name and click ok. The following shows an example of drawing a rounded rectangle with a border in the res/layout/drawables/solidcolorshape.xml.


<?xml version="1.0" encoding="UTF-8"?>
<shape
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:shape="rectangle">
    <stroke
        android:width="2dp"
        android:color="#FFFFFFFF" />
    <gradient
        android:endColor="#DDBBBBBB"
        android:startColor="#DD777777"
        android:angle="90" />
    <corners
        android:bottomRightRadius="7dp"
        android:bottomLeftRadius="7dp"
        android:topLeftRadius="7dp"
        android:topRightRadius="7dp" />
</shape>

Afterwards, apply the shape xml to a Textview in the activity_main.xml. Below is the following code. 

<TextView
   android:layout_width="wrap_content"
   android:layout_height="wrap_content"
   android:background="@drawable/solidcolorshape"
   android:textColor="#ffffff"
   android:text="Hello Wold!" />




---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
