# Understanding RelativeLayout
author: caren

levels:

  - beginner

type: normal

category: must-know

links:

  - ‘[Android RelativeLayout](https://developer.android.com/guide/topics/ui/layout/relative.html)'

---
## Content

RelativeLayout is useful when you want to position views in a layout relative to other views in the same layout. 

If you want to position views relative to it's siblings (views in the same hierarchy level), you can use attributes such as `layout_above`, `layout_toLeftOf`, `layout_alignTop`, or `layout_alignLeft`.

You can also align a view based on its parent (views one hierarchy above) with attributes such as `layout_centerHorizontal` or `layout_alignParentLeft`.

```
<RelativeLayout
    android:layout_width="match_parent"
    android:layout_height="wrap_content">

    <TextView 
        android:id="@+id/textView" 
        android:layout_width="100dp"
        android:layout_height="40dp"
        android:
         layout_alignParentBottom="true" />

    <Button android:id="@+id/button" 
        android:layout_width="100dp"
        android:layout_height="40dp" 
        android:
         layout_toRightOf="@id/textView" />
</RelativeLayout>
```

** todo add image of example

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
