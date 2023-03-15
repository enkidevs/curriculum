---
author: nemanjaenki
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Arrays Operations

---
## Content

If you know its position, finding an element in an array is O(1). 

![find-by-position](https://img.enkipro.com/da9c0bd0b13222e99d54fcc27c3d5092.gif)

If you don't, it's O(N) because, in the worst case, we have to look through the whole array if the element we're looking for happens to be at the end.

![find-by-value](https://img.enkipro.com/36b76b4148fecaffbe9bddeb50f1c2ff.gif)

Adding a new element is O(N) because we have to shift other elements to make room for it.

![add](https://img.enkipro.com/60396f0be43edc16ece0bf52f58f1fd3.gif)

Unless you're adding to the start or end of the array, which is O(1) because no shifting is needed.

![add-at-edge](https://img.enkipro.com/06323c60953fd8d435ae329a0e93665d.gif)

Removing an element is also O(N) because we have to shift other elements to fill up the empty space. 

![remove](https://img.enkipro.com/4e0ae2186d80a5b3cea946d16496147a.gif)

The exception is removing from either edge being O(1) as no shifting is needed.

![remove-at-edge](https://img.enkipro.com/81d116cd33690a1f7b4cea74672497de.gif)

> 💡 Be careful when altering or combining arrays in your interview solutions as that's usually O(N). If you can, alter at the start or end, which is O(1).

---
## Practice

What's the Big-O for finding an element in an array if you don't know its position?

???

- O(N)
- O(N²)
- O(log N)
- O(1)
