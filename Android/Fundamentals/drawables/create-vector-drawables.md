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

