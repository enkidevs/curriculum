---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

notes: ''

links:

  - >-
    [iosdevtips.co](http://iosdevtips.co/post/70614023140/use-breakpoints-instead-of-nslog-statements){website}

---
# Use breakpoints instead of NSLog statements

---
## Content

Add a breakpoint to the line you’d normally add an NSLog statement, and then right click it. 

Now click on edit breakpoint, which reveals a new popover, with a bunch of options.

Enable the “Automatically continue after evaluating” checkbox so that you don’t get interrupted each time your app’s control reaches that point. 

Next click on “Add Action” and type in “po” (or p if it’s not an object) followed by whatever you were trying to NSLog.