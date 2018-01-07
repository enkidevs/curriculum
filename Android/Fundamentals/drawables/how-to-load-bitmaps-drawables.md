# how-to-load-bitmaps-into-drawables
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Android allows you to use the Bitmap class for working with bitmaps. A bitmap is a representation of a bitmap image. Android supports bitmap files in three formats .png, .jpg, and .gif. Android allows you to convert a drawable image into a bitmap and display it in ImageView with java code. In order to convert a drawable image to a bitmap in android, android.graphics.Bitmap and android.graphics.BitmapFactory are used.

Following is the code for XML layout file, java activity file, and strings.xml file.

XML Layout File 

```
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android=
"http://schemas.android.com/apk/res/android"
    xmlns:app=
    "http://schemas.android.com/apk/res-auto"
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
---
## Practice

What are bitmaps stored?
???

* drawable folder
* menu folder
* strings folder

---
## Revision

Bitmaps can be loaded???
???

* manually and converted them into drawable objects
* only manually
* converted them into drawable objects
