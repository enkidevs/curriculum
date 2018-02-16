# create-a-transition
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content
Step 1: Activity Main file
```
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android=
"http://schemas.android.com/
apk/res/android"
xmlns:tools=
"http://schemas.android.com/tools"
xmlns:app=
"http://schemas.android.com/
apk/res-auto"
android:layout_width=
"fill_parent"
android:layout_height=
"fill_parent"
android:gravity=
"center"
android:orientation=
"vertical"
tools:context="com.example.tammy.
transitionexample.MainActivity">

<TextView
android:layout_width=
"wrap_content"
android:layout_height=
"wrap_content"
android:text=""
android:textColor=
"#000000"
android:textSize="25sp"
android:id=
"@+id/text_view"
android:layout_marginBottom=
"50dip"/>
<Button
android:layout_width=
"wrap_content"
android:layout_height=
"wrap_content"
android:text=
"@string/apply_transition"
android:id=
"@+id/button" />

</LinearLayout>
```

Step 2: Main Activity Java file

```
package com.example.tammy.
transitionexample;

import android.support.v7.
app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.View.
OnClickListener;
import android.widget.
TextView;
import android.animation.
AnimatorSet;
import android.animation.
ObjectAnimator;
import android.app.
Activity;

public class MainActivity extends 
Activity implements OnClickListener{

private final boolean IN = 
true;
private boolean state = 
IN;
@Override
public void onCreate
(Bundle savedInstanceState) {
super.onCreate
(savedInstanceState);
setContentView
(R.layout.activity_main);
findViewById(R.id.button).
setOnClickListener(this);
}

@Override
public void onClick(View v) {
TextView tv = (TextView)
findViewById(R.id.text_view);
tv.setText
("Hello Transition!");
ObjectAnimator scaleXOut = 
ObjectAnimator.ofFloat
(tv, "scaleX", 1f, 0f);
ObjectAnimator scaleXIn = 
ObjectAnimator.ofFloat
(tv, "scaleX", 0f, 1f);
ObjectAnimator scaleYOut = 
ObjectAnimator.ofFloat
(tv, "scaleY", 1f, 0f);
ObjectAnimator scaleYIn = 
ObjectAnimator.ofFloat
(tv, "scaleY", 0f, 1f);
ObjectAnimator rotateClockWise = 
ObjectAnimator.ofFloat
(tv, "rotation", 0f, 360f);
ObjectAnimator rotateCounterClockWise = 
ObjectAnimator.ofFloat
(tv, "rotation", 0f, -360f);
AnimatorSet set = 
new AnimatorSet();
if (state == IN) {
set.play(scaleXIn).with
(rotateClockWise).
with(scaleYIn);
} else {
set.play(scaleXOut).with
(rotateCounterClockWise).
with(scaleYOut);
}
state = !state;
set.setDuration(1000);
set.start();
}
}
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
