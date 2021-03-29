---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# Data Validation Example

---

## Content

Now that you know what data validation is, let's take a look at an example.

We're going to use the `Date` validation for our example, which will give us these options:

![date-criteria](https://img.enkipro.com/67f528223b01d5825b9e36d52a60511f.png)

Next, we're going to use the `between` option, which will give us these two fields to input the desired date:

![two-dates-image](https://img.enkipro.com/97309a2b386f0f95a331dceba520ca83.png)

Let's say we want a date between `1/2000` and `1/2010`. 

The `On invalid` radio button is used to determine if we should reject the input or just show a warning that the input is wrong.

The `Appearance` checkbox is used to give a hint regarding the validation required. If the box is checked, the message is auto-generated depending on the validation set.

Now we're going to write `Input a date between 1/2000 and 1/2010:` in a cell left of `D11` so that users know what to input.

With our data validation done, this is what our cell looks like when we hover over it:

![image-of-appearance](https://img.enkipro.com/2ecbd3b0dbdbad4fa6eb4f318963123a.png)

And this is how it looks when there is a wrong input:

![image-of-rejected-input](https://img.enkipro.com/6f9321ee5bb2fa4e89c8816a334ff61a.png)
 
