---
author: Mathieu

levels:

  - advanced

  - medium

type: normal

category: tip

notes: >-
  http://stackoverflow.com/questions/155964/what-are-best-practices-that-you-use-when-writing-objective-c-and-cocoa

links:

  - >-
    [developer.apple.com](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/EncapsulatingData/EncapsulatingData.html){website}

---
# Property atomicity is not synonymous with an object’s thread safety

---
## Content

Consider an XYZPerson object in which both a person’s first and last names are changed using atomic accessors from one thread. 

If another thread accesses both names at the same time, the atomic getter methods will return complete strings (without crashing), but there’s no guarantee that those values will be the right names relative to each other. 

If the first name is accessed before the change, but the last name is accessed after the change, you’ll end up with an inconsistent, mismatched pair of names.