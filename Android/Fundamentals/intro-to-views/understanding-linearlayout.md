# Understanding LinearLayout
author: caren

levels:

  - beginner

type: normal

category: must-know

links:

    - ‘[Creating Linear Layouts on Android](https://developer.android.com/guide/topics/ui/layout/linear.html)'

---
## Content

LinearLayouts are useful when you want to lay out views sequentially in one direction (horizontally or vertically). The order that view elements are defined in the layout file specifies the order that they will be laid out on the screen.

When using a LinearLayout, you can define special attributes such as an element's `layout_gravity` (to  determine how the view is anchored) or the `layout_weight` of the element (to customize the dimension distribution).

For example, if your layout requires that 2 text views take up equal width in a row such as :

![weight example](%3Csvg%20version%3D%221%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22266.667%22%20height%3D%2296%22%20viewBox%3D%220%200%20200.000000%2072.000000%22%2F%3E)

you can assign a `weightSum` to the LinearyLayout, and assign each text view a `layout_weight` of 1. 

```
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="horizontal"
    android:weightSum="2">

    <TextBox
        android:id="@+id/textBox1"
        android:layout_width="0dp"
        android:layout_weight="1"
        android:layout_height="50dp"/>

    <TextBox
        android:id="@+id/textBox2"
        android:layout_width="0dp"
        android:layout_weight="1"
        android:layout_height="50dp"/>
</LinearLayout>
```

`layout_gravity` is useful when you want to anchor a view in a specific way. For example, if a button should always be at the bottom of a screen you could define it as such:

```
<TextBox
    android:id="@+id/bottomButton"
    android:layout_width="200dp"
    android:layout_height="50dp"
    android:layout_gravity="bottom/>
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
