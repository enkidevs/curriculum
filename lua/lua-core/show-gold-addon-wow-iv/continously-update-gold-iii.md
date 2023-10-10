---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Notes About Previous Border

---
## Content


In the previous insight, the size of the `fBorder.left` frame is set relative to the `fBorder` frame.

The first line[1] sets the **bottom-left anchor point** of `fBorder.left` to the **bottom-left anchor point** of `fBorder`, with an **offset of -2 pixels to the left** and **-1 pixel down**. This means that the **bottom-left corner of `fBorder.left`** will be positioned **2 pixels to the left and 1 pixel down** from the bottom-left corner of `fBorder`.

The second line[2] sets the **top-right anchor point** of `fBorder.left` to the **top-left anchor point** of `fBorder`, with an **offset of -1 pixels to the left and 1 pixel up**. This means that the top-right corner of `fBorder.left` will be positioned 1 pixel to the left and 1 pixel up from the top-left corner of `fBorder`.

Taken together, these two lines of code position and size `fBorder.left` so that it **spans the left edge of `fBorder`** with a **1-pixel gap at the top** and a **2-pixel overlap at the bottom**.

---

## Footnotes

[1: first line]

```lua
fBorder.left:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMLEFT",-2,-1)
```

[2: second line]

```lua
fBorder.left:SetPoint("TOPRIGHT",fBorder,"TOPLEFT",-1,1)
```
