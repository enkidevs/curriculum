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

A `drawable` is a graphic file that can be drawn on the screen. The simplest case is a graphical file which would be represented in Android in the BitmapDrawable class. Drawables are stored as individual files located within the res/drawable folders. Drawables are used to define shapes, colors, borders, gradients, which can be applied to views within that Activity. Drawables are used for customizing the view graphics that are displayed within a particular view or context. They are defined in XML and can then be applied to a view in XML or Java.

There are many drawables types which can be used in different situations such as drawing shapes, setting state behaviors for buttons, creating stretchable button backgrounds and creating compound drawable layers. Below are a few to understand when using drawables and their usage:

* `Shape Drawables` defines a shape with properties such as using a stroke, filling, and padding.
* `StateList Drawables` references different bitmaps graphics for different state changes. Example include using a different image when a button is pressed.  
* `LayerList Drawables` manages an array of other drawables as they are drawn in an array order, in that the element with the largest index is drawn on top. 
* `NinePatch Drawables` is a .png file with stretchable regions to allow proper resizing 
* `Vector Drawables` defines XML based vector images.

Drawables can get directly accessed in XML via @drawable/filename where filename is the filename without the file extension. There are two ways to access a resource:

*	In code which you can set ImageView to use res/drawable/hellome.png using setImageResource():
  Below is the following snippet:

```
  ImageView imageView = (ImageView) 
    findViewById(R.id.image);
  imageView.setImageResource
    (R.drawable.hello);
```
*	In XML which you can define values for some XML attributes and elements using a reference to an existing resource. This will be done     by creating layout files that supplies strings and images for your widget. The following snippet shows if you add a button to your       layout, a string resource can be used for the button text. 
```
<Button
    android:layout_width="fill_parent"
    android:layout_height="wrap_content"
    android:text="@string/Hello" />
```

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

