# create-a-shape
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

To define shape:
1.	Create a new Android XML file in the folder res/drawable.
2.	Make sure the root element of the file is <shape> as this defines a ShapeDrawable.

**Example**
```
<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android=
"http://schemas.android.com/apk/res/android"
    android:shape="oval">
  
    <stroke
        android:width="2dp"
        android:color="#FFFFFF"/>
  
    <corners android:radius="5dp"/>
    <gradient
        android:type="linear"
        android:angle="270"
        android:centerColor="#ff6e89"
        android:endColor="#a37875"
        android:startColor="#bfffba" />
  
    <size
        android:width="100dp"
        android:height="100dp" />

</shape>


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
