# create-vector-drawables
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: how to

links:

  - '[What are drawable resource?](https://developer.android.com/guide/topics/resources/drawable-resource.html)'

---
## Content

Vector drawables are based on vector graphics which vector graphics describes graphical elements using geometric shapes which is similar to a SVG file. Vector drawables create an image as an XML file and be scaled for all dpi and for different devices. 

Below are the steps to create a vector drawable. 

Steps
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
<vector xmlns:android="http://schemas.android.
  com/apk/res/android"
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
                        C25,11.432,23.043,9.5,20.5,9.5z" />

</vector>

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

