# Chaining animations
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - chain

  - animations

links:

  - >-
    [www.tutorialspark.com](http://www.tutorialspark.com/css3/CSS3_Animation_Keyframes.php){website}

---
## Content

It's possible to achieve this by using the `animation-delay` property; it delays the execution of an animation by a specified amount of time.

In this example there are two animations.

If the first one takes 1 second to complete, a chain can be created by using the aforementioned property on the second animation :

```
@keyframes first {
	from { left: 0; }
	to { left: 100px; }
}
@keyframes second {
	from { left: 0; }
	to { left: 200px; }
}
#first, #second { position: relative; }
#first {
  animation: first 1s linear both;
}
#second {
  animation: second 3s linear both;
  animation-delay: 1s;
}
```

---
## Practice

What property is used to chain animations?

???
*animation-delay
*animation-chained
*delay
*animation-chain

---
## Revision

Which CSS property can be used to chain animations together?

???

* `animation-delay`
* `animation-chain`
* `animation-hold`
* `animation-pause`
