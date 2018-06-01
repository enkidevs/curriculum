---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

notes: 'http://stackoverflow.com/questions/146297/hidden-features-of-xcode'

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1163981/how-to-add-a-breakpoint-to-objc-exception-throw){website}

---
# Only use double precision if you have to, such as when working with CoreLocation

---
## Content

Make sure you end your constants in `f` to make gcc store them as floats.
```
  float val = someFloat * 2.2f;
```
This is mostly important when someFloat may actually be a double, you don't need the mixed-mode math, since you're losing precision in 'val' on storage. 

While floating-point numbers are supported in hardware on iPhones, it may still take more time to do double-precision arithmetic as opposed to single precision.