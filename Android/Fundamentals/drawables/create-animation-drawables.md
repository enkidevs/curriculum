# create-animation-drawables
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[Create a frame animation](https://www.ssaurel.com/blog/create-a-frame-animation-in-xml-on-android/)'

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
"http://schemas.android.com/apk/res/android"
android:id="@+id/imgDrawable" 
android:oneshot="false">
<item android:drawable=
"@drawable/lion1" android:duration="200" />
<item android:drawable=
"@drawable/lion2" android:duration="200" />
<item android:drawable=
"@drawable/lion3" android:duration="200" />
<item android:drawable=
"@drawable/lion4" android:duration="200" />
<item android:drawable=
"@drawable/lion5" android:duration="200" />
<item android:drawable=
"@drawable/lion6" android:duration="200" />

</animation-list>
```

Inside the animation-list tag, we define each frame based on item. Each item has a reference to a drawable that represents a frame, and also a duration in milliseconds. We choose to declare each frame for the lion from 1 to 6 with a 200 milliseconds as duration.

3. Create the layout. 
Layout of the Android applications is very simple using the RelativeLayout with an ImageView inside. Define the animation as a background for the ImageView like the following below:

```

<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android=
"http://schemas.android.com/apk/res/android"
 xmlns:app=
 "http://schemas.android.com/apk/res-auto"
 xmlns:tools=
 "http://schemas.android.com/tools"
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 tools:context="com.example.tammy.android_
 animated_drawable_test3.MainActivity">
 
 <TextView
 android:layout_width="wrap_content"
 android:layout_height="wrap_content"
 android:layout_alignParentLeft="true"
 android:layout_alignParentStart="true"
 android:layout_alignParentTop="true"
 android:layout_marginLeft="25dp"
 android:layout_marginStart="25dp"
 android:layout_marginTop="11dp"
 android:text="Hello World!" />
 
<ImageView
android:id="@+id/imgDrawable"
android:layout_width="wrap_content"
android:layout_height="wrap_content"
android:layout_alignParentLeft="true"
android:layout_alignParentStart="true"
android:layout_alignParentTop="true"
android:layout_marginTop="58dp"
android:contentDescription="@string/todo"
app:srcCompat="@drawable/drawables"
tools:layout_editor_absoluteX="16dp"
tools:layout_editor_absoluteY="279dp" />

</RelativeLayout>

```
4. Run the animation. 
To use the animation in this activity, you need to set the layout and to get an instance to the ImageView. Post a Runnable on the instance in which to get the background of the image and call the start method of the AnimationDrawable associated: 

```
package com.example.tammy.android_
animated_drawable_test3;

import android.app.Fragment;
import android.graphics.drawable.
AnimationDrawable;
import android.support.v7.app.
AppCompatActivity;
import android.os.Bundle;
import android.widget.ImageView;

public class MainActivity extends 
AppCompatActivity {

@Override
protected void onCreate
(Bundle savedInstanceState) {
super.onCreate(savedInstanceState);
setContentView(R.layout.activity_main);
ImageView img = (ImageView) 
findViewById(R.id.imgDrawable);
img.setBackgroundResource
(R.drawable.drawables);
AnimationDrawable frameAnimation = 
(AnimationDrawable) img.getBackground();
frameAnimation.start();

    }
};
   
```

---
## Practice

The `android:duration`is?
???

* The amount of time in milliseconds to display this frame
* Allows the duration to run a single time and then stop
* Amount of time to display this frame

---
## Revision

Which of the following Java code snippet is most efficient and illustrates the correct use of creating an animation frame? 

```
//Example A
<animation-list xmlns:android=
"http://schemas.android.com/apk/res/android"
android:id="imgDrawable" 
android:oneshot="true"
<item android:drawable=
"lion1" android:duration="200dp" />
</animation-list>

//Example B
<animation-list xmlns:android=
"http://schemas.android.com/apk/res/android"
android:id="@+id/imgDrawable" 
android:oneshot="false">
<item android:drawable=
"@drawable/lion1" android:duration="200" />
</animation-list>

//Example C
<animation-list xmlns:android=
"http://schemas.android.com/apk/res/android"
android:id="+imgDrawable" 
android:oneshot="false"
<items android:drawable=
"lion1" android:visible="200s" />
</animation-list>
```

???

*Example B
*Example A
*Example C
