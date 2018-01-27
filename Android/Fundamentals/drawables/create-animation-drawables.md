# create-animation-drawables
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Android offers to developers a great Animation API that lets them to create easily frame animation in XML or programmatically. In the section, learn how to create a frame animation in XML. For this, we’re going to use a lion character that we want to animate.

**Steps**
1. Create the frames of the lion animation. 
2. Create the animation using an XML file. 
When your Android application project is created, you need to put the bitmaps in a res/drawable directory. Then, you can create the Animation in XML like the following below:

```
<?xml version="1.0" encoding="utf-8"?>
<animation-list xmlns:android=
"http://schemas.android.com/apk/res/
android" android:id="@+id/imgDrawable"
android:oneshot="false">
<item android:drawable="@drawable/lion1" 
android:duration="200" />
<item android:drawable="@drawable/lion2" 
android:duration="200" />
<item android:drawable="@drawable/lion3" 
android:duration="200" />
<item android:drawable="@drawable/lion4" 
android:duration="200" />
<item android:drawable="@drawable/lion5" 
android:duration="200" />
<item android:drawable="@drawable/lion6" 
android:duration="200" />

</animation-list>

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
