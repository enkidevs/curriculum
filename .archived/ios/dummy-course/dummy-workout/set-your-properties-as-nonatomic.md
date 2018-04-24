---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: tip

notes: >-
  http://stackoverflow.com/questions/155964/what-are-best-practices-that-you-use-when-writing-objective-c-and-cocoa

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/588866/whats-the-difference-between-the-atomic-and-nonatomic-attributes){website}

---
# Set your properties as `nonatomic`

---
## Content

They're `atomic` by default and upon synthesis, semaphore code will be created to prevent multi-threading problems. 

99% of you probably don't need to worry about this and the code is much less bloated and more memory-efficient when set to `nonatomic`.