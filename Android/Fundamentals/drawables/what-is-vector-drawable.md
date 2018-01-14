# what-is-vector-drawable
author: tlawson

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Vector drawables are based on vector graphics which vector graphics describes graphical elements using geometric shapes which is similar to a SVG file. Vector drawables create an image as an XML file and can be scaled for all dpi and for different devices. 

Below are steps to create a vector drawable:

Step 1: Ensure the code is in Gradle Scripts.

Below is a snippet of the code. 

```
android {
    defaultConfig {
        vectorDrawables.useSupportLibrary 
          = true
    }
}
```

Step 2: Create a vector. 

Below is a snippet of how to create a vector in the drawable folder as an XML file.

```
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android=
"http://schemas.android.com/apk/res/android"
    android:height="64dp"
    android:width="64dp"
    android:viewportHeight="600"
    android:viewportWidth="600" >
    <group
        android:name="rotationGroup"
        android:pivotX="300.0"
        android:pivotY="300.0"
        android:rotation="45.0" >
        <path
            android:name="v"
            android:fillColor="#000000"
            android:pathData=
            "M300,70 l 0,-70 70,70 0,0 -70,70z"
               />
    
    <group>
</vector>
```
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
