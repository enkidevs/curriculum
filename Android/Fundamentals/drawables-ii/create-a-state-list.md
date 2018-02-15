# create-state-list
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Step 1: Create a button 

```
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android=
"http://schemas.android.com/apk/res/android">
<item
android:state_focused="true"
android:state_enabled="true"
android:drawable="@drawable/button_focused" />
<item
android:state_enabled="true"
android:drawable="@drawable/button_normal" />
</selector>
```
Step 2: Create the drawables that are listed in the button.
Button Normal
```
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android=
"http://schemas.android.com/apk/res/android">
<shape android:shape="rectangle">
<gradient android:startColor=
"#FFFFFFFF" android:endColor="#A4A4A4"
android:angle="270" />
<corners android:radius="2dp" />
<padding android:top="10dp" 
android:bottom="10dp" android:left="10dp"
android:right="10dp"/>
</shape>
</selector>
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
