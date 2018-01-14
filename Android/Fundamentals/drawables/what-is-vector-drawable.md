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
