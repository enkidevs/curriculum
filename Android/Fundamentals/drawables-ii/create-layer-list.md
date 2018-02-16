# create-layer-list
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

LayerList Drawable – manages an array of drawables. These are drawn in an array order, the largest element with the largest index is drawn on top. For a simple example, the following layer list draws several shapes in relation to each other:

Step 1: Create a layer list xml file and place it in the res/drawable folder
```
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android=
"http://schemas.android.com/
apk/res/android">
<item>
<shape android:shape=
"oval">
<size
android:width="200dp"
android:height="200dp" />
<solid android:color=
"#5BB534" />
</shape>
</item>
<item
android:left="25dp"
android:top="25dp"
android:right="25dp"
android:bottom="25dp">
<shape>
<solid android:color=
"#4335BA" />
</shape>
</item>
<item
android:left="30dp"
android:top="30dp"
android:right="30dp"
android:bottom="30dp">
<shape
android:shape="ring"
android:thickness="20dp"
android:useLevel="false">
<solid android:color=
"#BFB637" />
</shape>
</item>
</layer-list>
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
