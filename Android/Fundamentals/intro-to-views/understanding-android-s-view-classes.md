# Understanding Android&#39;s View classes
author: caren

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - ‘[Android Views](https://developer.android.com/reference/android/view/View.html)'

---
## Content

All of Android's UI is built using View classes. View classes can be used as layout containers or they can be used to display widgets such as buttons or text views. Android activities use view classes as containers and are instantiated when the activity is created:
```
@Override
protected void onCreate(Bundle savedState) {
    super.onCreate(savedState);
    setContentView
      (R.layout.main_activity_layout);
}
```

Most of the common widgets such as buttons and text fields are provided by the Android framework and can be simply defined in a layout file as such:
```
<Button
    android:layout_width="100dp"
    android:layout_height="100dp"
    android:text="Start"/>
```

View layouts are typically built with XML files that are similar to HTML in structure. Individual views are arranged in a tree format and each view can have properties definied such as its dimensions and behavior. 

```
<FrameLayout 
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
        android:id="@+id/textView"
        android:layout_width="150dp"
        android:layout_height="40dp"
        android:text="Hello World"/>

    <Button
        android:layout_width="100dp"
        android:layout_height="100dp"
        android:text="Start Here"/>
</FrameLayout>
```

There are many types of view layouts available, but the most commonly used ones include FrameLayout, LinearLayout, and RelativeLayout. 


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
