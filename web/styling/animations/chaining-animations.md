---
author: nene
type: normal
category: how-to
tags:
  - chain
  - animations
links:
  - >-
    [Article on Animation And
    Keyframes](http://www.tutorialspark.com/css3/CSS3_Animation_Keyframes.php){article}
  - >-
    [MDN Docs on
    @keyframes](https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes){documentation}
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

# Chaining animations


---

## Content

It's possible to achieve this by using the `animation-delay` property; it delays the execution of an animation by a specified amount of time.

In this example there are two animations.

If the first one takes 1 second to complete, a chain can be created by using the aforementioned property on the second animation :

```css
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

```css
???
```

- animation-delay
- animation-chained
- delay
- animation-chain


---

## Revision

The CSS property used to chain animations together is:

```css
???
```

- `animation-delay`
- `animation-chain`
- `animation-hold`
- `animation-pause`
