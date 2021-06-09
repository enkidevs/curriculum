---
author: Mathieu
type: normal
category: how-to
links:
  - >-
    [Tutorial on
    Animations](http://tympanus.net/codrops/css_reference/animation-play-state/){article}
  - >-
    [12 Little Known CSS
    Tips](http://www.sitepoint.com/12-little-known-css-facts/){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Pause and play CSS animations


---

## Content

You can *pause* and *play* CSS animation by changing its `animation-play-state` property.

Setting it to *paused* stops your animation in place, until you change `animation-play-state` to running, for example on hover.

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

```css
.animation:hover{
  ???:
        ???;
```

- `animation-play-state`
- `running`
- `play`
- `start`
- `animation-state`


---

## Revision

What are the two states which can pause or play CSS animations?

???

- Paused and running.
- Start and stop.
- Paused and playing.
- Running and stop.
