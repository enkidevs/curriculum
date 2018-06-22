---
author: nene

levels:

  - basic

  - medium

type: normal

category: must-know

tags:

  - animation

  - keyframes


links:

  - '[unmatchedstyle.com](http://unmatchedstyle.com/news/css-animation.php){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/animation){documentation}'


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

![animationsvgmin.svg](%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20version=%221.2%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2235%22%3E%3Cpath%20fill=%22#596193%22%20d=%22M0%200h800v300H0z%22/%3E%3Ccircle%20fill=%22#fff%22%20cx=%22150%22%20cy=%2270%22%20r=%2260%22/%3E%3Ctext%20x=%22130%22%20y=%2260%22%3E0%25%3C/text%3E%3Ctext%20x=%22110%22%20y=%22100%22%3E100%25%3C/text%3E%3Ccircle%20fill=%22#fff%22%20cx=%22650%22%20cy=%2270%22%20r=%2260%22/%3E%3Ctext%20x=%22620%22%20y=%2282%22%3E25%25%3C/text%3E%3Ccircle%20fill=%22#fff%22%20cx=%22650%22%20cy=%22230%22%20r=%2260%22/%3E%3Ctext%20x=%22620%22%20y=%22242%22%3E50%25%3C/text%3E%3Ccircle%20fill=%22#fff%22%20cx=%22150%22%20cy=%22230%22%20r=%2260%22/%3E%3Ctext%20x=%22120%22%20y=%22242%22%3E75%25%3C/text%3E%3Cpath%20d=%22M243.56%2068.226l290.698.982%22%20fill=%22none%22%20stroke=%22#000%22%20opacity=%22.01%22/%3E%3Cpath%20d=%22M327.083%2073.61h150l-36.458%2036.46M477.083%2073.264L441.84%2038.02M478.38%20232.695l-150-.628%2036.61-36.306M328.38%20232.414l35.094%2035.39M623.3%20136.515l27.778%2027.778%2026.736-26.736M177.814%20164.646l-27.778-27.777-26.736%2026.735%22%20fill=%22none%22%20stroke=%22#fff%22%20stroke-width=%222%22/%3E%3C/svg%3E)


You can also _pause_ and _play_ CSS animation by changing its `animation-play-state` property.

Setting it to _paused_ stops your animation in place, until you change `animation-play-state` to running, for example on hover.
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

???

* `keyframes`
* `animation`
* `actions`
* `move`

---
## Revision

There are two main properties when it comes to animating.

??? are the actions an element should follow throughout the animation.

??? is how an element should transition (duration, speed).


* keyframes
* animation
* sequence
* transition
* movements
* frames
* splits

