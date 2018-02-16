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
"http://schemas.android.com/
apk/res/android">
<item
android:state_focused="true"
android:state_enabled="true"
android:drawable=
"@drawable/button_focused" />
<item
android:state_enabled="true"
android:drawable=
"@drawable/button_normal" />
</selector>
```
Step 2: Create the drawables that are listed in the button.
Button Normal
```
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android=
"http://schemas.android.com/
apk/res/android">
<shape android:shape="rectangle">
<gradient android:startColor=
"#FFFFFFFF" 
android:endColor="#A4A4A4"
android:angle="270" />
<corners android:radius="2dp" />
<padding android:top=
"10dp" android:bottom="10dp"
android:left="10dp"
android:right="10dp"/>
</shape>
</selector>
```
Button Focus 
```
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android=
"http://schemas.android.com/
apk/res/android">
<shape android:shape="rectangle">
<gradient android:startColor=
"#118c03" android:endColor=
"#14A804"
android:angle="270" />
<corners android:radius="2dp" />
<stroke android:color=
"#4B4B4B" android:width="1dp" />
<padding android:top="10dp"
android:bottom="10dp"
android:left="10dp"
android:right="10dp" />
</shape>
</selector>

```

Button Text 
```
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android=
"http://schemas.android.com/
apk/res/android">
<item android:state_pressed="true" 
android:color="#ffff0000"/>
<item android:state_focused="true" 
android:color="#ff0000ff"/>
<item android:color="#ff000000"/>
</selector>
```

Step 3:

```

<?xml version="1.0" encoding="utf-8"?>
<android.support.constraint.
ConstraintLayout 
xmlns:android=
"http://schemas.android.com/apk/res/android"
xmlns:app=
"http://schemas.android.com/apk/res-auto"
xmlns:tools=
"http://schemas.android.com/tools"
android:layout_width="match_parent"
android:layout_height="match_parent"
tools:context=
"com.example.tammy.statelist_drawable.
MainActivity">
<Button
android:layout_width="fill_parent"
android:layout_height="wrap_content"
android:text=
"@string/button_text"
android:textColor=
"@color/button_text" />
</android.support.constraint.
ConstraintLayout>

```

Step 4:
Adding strings in String.xml 

```
<resources>
<string name="app_name">
StateList-Drawable</string>
<string name="button_text">
Button Text</string>
</resources>


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
