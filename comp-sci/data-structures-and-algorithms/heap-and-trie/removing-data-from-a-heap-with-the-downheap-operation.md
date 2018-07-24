---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to



parent: inserting-data-into-a-heap-with-the-upheap-operation

---

# Removing Data From a Heap With The `downheap` Operation

---
## Content

Finding the maximum value in a max-heap (or the minimum value in a min-heap) is easy: it's stored in the root node. However, we also want to be able to remove the maximum.

Consider the following (binary) max-heap:

![downheap1](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M349%2090c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C372.560339%2026.6072003%20361.551767%2020%20349%2020c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM209%20190c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C232.560339%20126.6072%20221.551767%20120%20209%20120c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm-93%2090c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C139.560339%20216.6072%20128.551767%20210%20116%20210c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm373-90c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C512.560339%20126.6072%20501.551767%20120%20489%20120c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22464.996094%22%20y%3D%22171%22%3E36%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22184.996094%22%20y%3D%22171%22%3E19%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2291.9960938%22%20y%3D%22261%22%3E17%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M305%20280c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C328.560339%20216.6072%20317.551767%20210%20305%20210c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22292.998047%22%20y%3D%22261%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2236%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22316.594727%22%20y%3D%2269%22%3E100%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M324.305402%2081L231%20127.270754M375%2081l89.005263%2049.575516M141%20220l43.724368-39m50.005479-1.977491l46.072795%2041.367311%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Remember, that we need to maintain two properties of the tree to ensure we have a heap:

1. The tree is a *complete* binary tree
2. The parent node of a key is always greater than or equal to the key itself

To respect property (1), we move the key in the last position to the root position after we've removed the root.  In this case, we'd move the key `6` to the root node after removing `100`.  To respect property (2), as in the insertion case, we will move around nodes in the tree until the now-rearranged data is properly arranged.

So, after removing `100` and moving up `6`, the heap would look like this:

![downheap2](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M349%2090c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C372.560339%2026.6072003%20361.551767%2020%20349%2020c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Cpath%20d%3D%22M209%20190c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C232.560339%20126.6072%20221.551767%20120%20209%20120c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm-93%2090c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C139.560339%20216.6072%20128.551767%20210%20116%20210c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm373-90c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C512.560339%20126.6072%20501.551767%20120%20489%20120c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22464.996094%22%20y%3D%22171%22%3E36%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22184.996094%22%20y%3D%22171%22%3E19%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2291.9960938%22%20y%3D%22261%22%3E17%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22336.998047%22%20y%3D%2271%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M324.305402%2081L231%20127.270754M375%2081l89.005263%2049.575516M141%20220l43.724368-39%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Again, the tree no longer satisfies property (2) — the heap property — since `6` is less than both its children.  To ensure that we respect the heap property, we compare `6` to its children.  If it is less than either of its children we swap it with the larger of the two children.  By swapping it with the *larger* of the two children we ensure that the key replacing `6` will be greater than both its children (and hence respect the heap property).

We continue doing this until `6` is in a position where it is greater than both its children.

This operation is sometimes called the `shift-down` or `downheap` operation.  Here's how it would look in this instance.

Since `6` is less than both `19` and `36`, we would swap `6` with `36`, the larger of the two children:

![downheap3](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M349%2090c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C372.560339%2026.6072003%20361.551767%2020%20349%2020c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Cpath%20d%3D%22M209%20190c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C232.560339%20126.6072%20221.551767%20120%20209%20120c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm-93%2090c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C139.560339%20216.6072%20128.551767%20210%20116%20210c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm373-90c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C512.560339%20126.6072%20501.551767%20120%20489%20120c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22476.998047%22%20y%3D%22171%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22184.996094%22%20y%3D%22171%22%3E19%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2291.9960938%22%20y%3D%22261%22%3E17%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22324.996094%22%20y%3D%2271%22%3E36%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M324.305402%2081L231%20127.270754M375%2081l89.005263%2049.575516M141%20220l43.724368-39%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In this specific case we are done, but in general we might have to perform multiple such swaps until `6` is in the correct position.

---
## Practice

Which node should we move into the root position after removing the old one?
```
       ???    
      /   \
    20      38
   /  \    /  \
  15  16   3   37
```

* `37`
* `38`
* `3`
* `15`
* `16`

---
## Revision

During `downheap` operation, if both the children of a node have larger keys than the parent's, we swap the parent with

???.

* the larger of the two children
* the smaller of the two children
* none, since it already respects the heap property

 
