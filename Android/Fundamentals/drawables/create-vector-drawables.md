# create-vector-drawables
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: how to

links:

  - '[Create a vector drawable](https://guides.codepath.com/android/drawables#vector-drawables)'

---
## Content

Vector drawables are based on vector graphics which vector graphics describes graphical elements using geometric shapes which is similar to a SVG file. Vector drawables create an image as an XML file and be scaled for all dpi and for different devices. 

Below are the steps to create a vector drawable. 

**Steps**

1. Ensure the code is in gradle scripts(build.gradle(Module: app))
Example listed below:

```
// Gradle Plugin 2.0+
android {
    defaultConfig {
        vectorDrawables.
        useSupportLibrary = true
    }
}
```

2. Create a vector. 
Create an XML file and place the file in the drawable folder. Below is the snippet code of the vector XML file:

```
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android=
"http://schemas.android.com/apk/res/android"
    android:height="64dp"
    android:width="64dp"
    android:viewportHeight="32"
    android:viewportWidth="32" >
    <path
            android:fillColor="#c9c10606"
            android:pathData="M20.5,9.5
            c-1.955,0,-3.83,1.268,-4.5,3
            c-0.67,-1.732,-2.547,-3,-4.5,-3
            C8.957,9.5,7,11.432,7,14
            c0,3.53,3.793,6.257,9,11.5
            c5.207,-5.242,9,-7.97,9,-11.5
            C25,11.432,23.043,
            9.5,20.5,9.5z" />
           
</vector>

```
3. Using Vector Drawables
Load the vectors using the app:srcCompat property.

```
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android=
"http://schemas.android.com/apk/res/android"
xmlns:tools=
"http://schemas.android.com/tools"
xmlns:app=
"http://schemas.android.com/apk/res-auto"
android:layout_width="wrap_content"
android:layout_height="wrap_content">
<ImageView
android:id="@+id/ic_heart"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
app:srcCompat="@drawable/ic_heart"
android:contentDescription="@null"/>

 </RelativeLayout>
 
```
## Practice

Complete the following code snippet such that it makes sense to create a vector drawable:
```

<vector xmlns:android=
"http://schemas.android.com/apk/res/android"
    android:height="64dp"
    android:width="64dp"
    android:viewportHeight="32"
    android:viewportWidth="32" >
    <path
            ???="#c9c10606"
            ???="M20.5,9.5
            c-1.955,0,-3.83,1.268,-4.5,3
            c-0.67,-1.732,-2.547,-3,-4.5,-3
            C8.957,9.5,7,11.432,7,14
            c0,3.53,3.793,6.257,9,11.5
            c5.207,-5.242,9,-7.97,9,-11.5
            C25,11.432,23.043,
            9.5,20.5,9.5z" />
           
</vector>
```
*`android:fillColor`
*`android:pathData` 
*`android:width` 
*`android:viewportHeight` 


---
## Revision

To reference a vector drawable, use???

* `app:srcCompat`
* `android:id`
* `android:contentdescription`

