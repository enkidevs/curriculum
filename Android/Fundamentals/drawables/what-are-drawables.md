# what-are-drawables
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[What are drawable resource?](https://developer.android.com/guide/topics/resources/drawable-resource.html)'

---
## Content

A drawable is a graphic file that can be drawn on the screen and stored as individual files located within the res/drawable folders. Drawables are used to define shapes, colors, borders, gradients, which can be applied to views within that Activity. 
Drawables are used for customizing the view graphics that are displayed within a particular view or context. They are defined in XML and can then be applied to a view XML or Java.

There are many drawables types which can be used in different situations such as drawing shapes, setting state behaviors for buttons, creating stretchable button backgrounds and creating compound drawable layers. Below are a few to understand when using drawables and their usage:

**Shape Drawables** – Defines a shape with properties such as using stroke, filling, and padding.

**StateList Drawables** – Used for different states 

**LayerList Drawables** – Drawables grouped together into a composite result

**NinePatch Drawables** – a png file with stretchable regions to allow proper resizing 

**Vector Drawables** – defines XML based vector images.

How to Add Drawables 
Drawables are referred to in XML via @drawable/filename whereby filename is the filename without the file extension. For example to access the res/drawable/hello.png drawable, you would use @drawable/hello as demonstrated in the following snippet. Graphical assets which are stored in the folders starting with drawable are managed by the Android. They can get directly accessed in XML via @drawable/filename whereby filename filename is the filename without extension. For example to access the hello.png file, you would use @drawable/hello. In code you can also access these drawables. Most views accept an resource ID as input parameter. 
	For example the following code shows how to set a drawables as background to an ImageView.

---
## Practice

A drawable is ???

* graphic file that can be drawn on the screen
* defined in a non-Java file
* used to customized text

---
## Revision

What drawable are grouped togeter into a composite result???

* LayerList
* Shape
* Vector

