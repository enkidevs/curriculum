---
author: Stefan-Stojanovic

tags:
  - discussion

type: normal

category: discussion

---

# Test Yourself

---

## Content

Now that you've learned some CSS, it's time to apply it!

Let's say you have these two `<div>` elements:
```html
<div class="topdiv">
  topdiv
</div>

<div class="bottomdiv">
  bottomdiv
</div>
```

One of them has styling applied to it, while the other doesn't.

![two-different-divs](https://img.enkipro.com/78088e8e786299d04e782ea76b6a4059.png)

Can you make the `topdiv` element match the `bottomdiv` one?

Here's how the end result should look like:

![two-equal-divs](https://img.enkipro.com/7ff8de095a87198ae6392f1332140eb8.png)

Also, here is a [codepen playground template](https://codepen.io/pen/?template=rNMLbdM) with the above HTML code. Modify the CSS so the div elements match.

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment or a codepen link with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.
 
---
## Footnotes
[1: Hints]

You can start by first creating the borders and matching the width, height, and color of the bottom div element.

Next, match the margins and paddings on all four sides.

Lastly, align the text of the `topdiv` element to be centered.

Here are some guidelines to shorten your code:

```css
border-top: 2px dashed green;
border-bottom: 2px dashed green;
border-right: 2px dashed green;
border-left: 2px dashed green;
```

Is equivalent to this:
```css
border: 2px dashed green;
```

Also this:
```css
border-color: red red red red;
border-style: solid dashed dotted double;
border-width: 1px 2px 1px 2px;
```

Is equivalent to this:
```css
border-top:    1px solid  red;
border-right:  2px dashed red;
border-bottom: 1px dotted red;
border-left:   2px double red;
```
