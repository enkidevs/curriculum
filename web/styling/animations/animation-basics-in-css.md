---
author: nene
type: normal
category: must-know
tags:
  - animation
  - keyframes
links:
  - '[CSS Animations](http://unmatchedstyle.com/news/css-animation.php){article}'
  - >-
    [MDN Docs on
    Animation](https://developer.mozilla.org/en-US/docs/Web/CSS/animation){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Animation basics in CSS


---

## Content

There are two main properties when it comes to animating : `animation` and `keyframes`.

`animation` : how an element should transition (duration, speed).

`keyframes` : the actions an element should follow throughout the animation.

Sample code of a circle moving inside a square:  

```css
#ball {
position: relative;
animation: ball 4s linear infinite;
}
@keyframes ball {
    0% { top: 50px; left: 50px; }
    25% { top: 50px; left: 200px; }
    50% { top: 200px; left: 200px; }
    75% { top: 200px; left: 50px; }
    100% { top: 50px; left: 50px; }
}
```

*1s* is necessary for the ball to get from any point to the next. Because of the `infinite` value, the animation will not stop by itself.

![animationsvgmin.svg](https://img.enkipro.com/f3391cbe5ba0db6aab629bfd8a191e7a.png)

You can also *pause* and *play* CSS animation by changing its `animation-play-state` property.

Setting it to *paused* stops your animation in place, until you change `animation-play-state` to running, for example on hover.

```css
#ball {
    animation: spin 10s linear infinite;
    animation-play-state: paused;
}
#ball {
    animation-play-state: running;
}
```


---

## Practice

Which keyword determines the actions an element should follow during the animation?

```css
???
```

- `keyframes`
- `animation`
- `actions`
- `move`


---

## Revision

There are two main properties when it comes to animating.

The actions an element should follow throughout the animation are:

```css
???
```

How an element should transition (duration, speed) is set through this property: 

```css
???
```

- keyframes
- animation
- sequence
- transition
- movements
- frames
- splits
