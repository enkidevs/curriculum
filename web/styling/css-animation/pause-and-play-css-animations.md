# Pause and play CSS animations
author: Mathieu

levels:

  - advanced

  - medium

type: normal

category: how to

notes: 'http://www.sitepoint.com/12-little-known-css-facts/'

links:

  - >-
    [tympanus.net](http://tympanus.net/codrops/css_reference/animation-play-state/){website}

---
## Content

You can _pause_ and _play_ CSS animation by changing its `animation-play-state` property.

Setting it to _paused_ stops your animation in place, until you change `animation-play-state` to running, for example on hover.
```css
.animating_thing {
    animation: spin 10s linear infinite;
    animation-play-state: paused;
}
.animating_thing:hover {
    animation-play-state: running;
}
```

---
## Practice

How do you restart an animation?
```
.animation:hover{
  ???:
        ???;
```
*`animation-play-state`
*`running`
*`play`
*`start`
*`animation-state`

---
## Revision

What are the two states which can pause or play CSS animations? 

???
* Paused and running.
* Start and stop.
* Paused and playing.
* Running and stop.
