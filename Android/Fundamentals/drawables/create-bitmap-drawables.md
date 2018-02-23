# create-bitmap-drawables
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[Convert Drawable to Bitmap](http://www.viralandroid.com/2015/12/how-to-convert-drawable-to-bitmap-in-android.html)'

---
## Content

Android allows you to use the Bitmap class for working with bitmaps. A `bitmap` is a representation of a bitmap image. Android supports bitmap files in three formats which are: .png, .jpg, and .gif. Android allows you to convert a drawable image into a bitmap and display it in an ImageView with java code. In order to convert a drawable image to a bitmap in android, android.graphics.Bitmap and android.graphics.BitmapFactory are used in the java code. 

This example teaches you to convert a drawable image to bitmap and display it in ImageView with simple java code.

**Steps**

1. Upload an image inside the drawable folder. 
2. Access the XML Layout file. Below is the following code:

**XML Layout File**
```
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android=
"http://schemas.android.com/apk/res/android"
xmlns:
app="http://schemas.android.com/apk/res-auto"
android:layout_width="fill_parent"
android:layout_height="fill_parent"
android:layout_margin="22dp"
android:gravity="center"
android:orientation="vertical">

<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text= "@string/draw_bitmap" />

<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:autoLink="web"
    android:gravity="center|bottom"
    android:text="@string/landscape"
    android:textSize="18sp"
    android:textStyle="bold" />

<ImageView
    android:id="@+id/imageView"
    android:layout_width="wrap_content"
    android:layout_height="158dp"
    android:layout_gravity="center"
    app:srcCompat="@drawable/nature" />

</LinearLayout>
```
3. Access the Java Activity File. Below is the following code: 

```
package com.example.tammy.bitmapdrawable2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v7.
app.AppCompatActivity;
import android.widget.ImageView;

public class MainActivity extends 
AppCompatActivity {

 @Override
    protected void onCreate
    (Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView
        (R.layout.activity_main);
        ImageView bitmapImage = (ImageView) 
        findViewById(R.id.imageView);
        Bitmap bitmapImageLocal = 
        BitmapFactory.decodeResource(
                getApplicationContext
                ().getResources(),
                R.drawable.nature);
        bitmapImage.setImageBitmap
        (bitmapImageLocal);
        
        
```

4. Access Strings.xml file. Below is the following code.
```
<resources>

    <string name="draw_bitmap">
    Convert Drawable to Bitmap</string>
    <string name="landscape">
    Landscape Picture</string>
</resources>
```
Once the application is run, you will see the icon in the screen which is converted drawable to bitmap.

---
## Practice

Complete the following code snippet such that it makes sense to convert a drawable to a bitmap:
```
???
???
import android.os.Bundle;
import android.support.v7.
app.AppCompatActivity;
import android.widget.ImageView;
```
*`import android.graphics.Bitmap;`
*`import android.graphics.BitmapFactory;` 
*`import package com.example.tammy.bitmapdrawable2;` 
*`import java.util.Calendar;` 

---
## Revision

What is the best definition for bitmap?
???

* A drawable that is drawn on the screen and displayed as a bitmap in formats of .png, .jpg, and .gif.
* A graphic file format with the file extensions of *.bmp or *.dib and saved as bits and uncompressed images.
* A bitmap File that uses bitmap graphic files: .png, or .jpg and creates a BitmapDrawable
