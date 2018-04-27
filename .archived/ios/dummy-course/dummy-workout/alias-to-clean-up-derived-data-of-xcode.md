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
    [stackoverflow.com](http://stackoverflow.com/questions/18933321/deleting-contents-from-xcode-derived-data-folder){website}

  - >-
    [realm.io](http://realm.io/news/favorite-swift-tips-and-tricks-of-2014/){website}

---
# Alias to clean up Derived Data of XCode

---
## Content

When having a problem in Xcode, begin by removing the Derived Data of Xcode. 

There is even an alias (to put in your .alias) for that:
```bash
alias sourcekitsad='rm -rf  \
~/Library/Developer/Xcode/DerivedData'
```