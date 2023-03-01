---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Addon

---
## Content

Previously we have created an addon that looks like this:

![show-money-no-ui](https://img.enkipro.com/6d6526066cd148fd4026ea9a2965ae53.png)

Note that If you have no Gold, it might look like this:

![show-silver-copper](https://img.enkipro.com/ab3a22955103848bf43682b6c668b333.png)

Or if you only have copper, like this:

![show-copper](https://img.enkipro.com/686e79fccf24dcb41a8b04147bc9c5d4.png)

This function determines your money and only displays the value if you have it.

Now let's modify the background texture.

First, let's add a background:
```lua
frame.texture = frame:CreateTexture(nil, "BACKGROUND")
frame.texture:SetAllPoints(frame)
frame.texture:SetColorTexture(0.3, 0.2, 0.1, 0.5)
```

We give the same dimensions for the texture as the frame by setting its anchor points to the edges of the frame using the `SetAllPoints` method and passing the frame as the argument.

Then the texture is colored with a semi-transparent brown color using the `SetColorTexture()` method.

The `SetColorTexture` arguments, in order, are (Red, Green, Blue, Alpha (Opacity of the frame))

The result is a visually distinct background for the frame that helps to make it stand out from other UI elements.

Which looks like this:

![bg-frame](https://img.enkipro.com/f811983c76bbd2178525b70fc4142633.png)
