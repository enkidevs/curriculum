# Using animation delay in debugging
author: NomaDube

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

links:

  - >-
    [css-tricks.com](https://css-tricks.com/debugging-css-keyframe-animations/){website}

---
## Content

Set `animation-play-state: paused;` and `animation-delay` to different negative times to help with animation debugging:

```css
.animated {
  animation: move 3s linear
             infinite
             alternate;
  /* for debugging only: */
  animation-play-state: paused;
  /* to show expected state at 2s: */
  animation-delay: -2s;  
}
```

The example above shows the animation paused at the 2 second point of the animation lifecycle.

---
## Practice

Pause the animation at second 4:
```css
.debugAnimation{
  animation: animate 6s
             linear infinite;
  ???: ???;
  ???: ???;
```
*`animation-play-state`
*`paused`
*`animation-delay`
*`-4`
*`4`
*`stop`
*`animation-time`

---
## Revision

Which of the following lines of code is the line using an animation delay to help with debugging:

```css
animation-play-state: wait;
animation-play-state: freeze;
animation-play-state: paused;
```
???

* Line 3
* Line 2
* Line 1
