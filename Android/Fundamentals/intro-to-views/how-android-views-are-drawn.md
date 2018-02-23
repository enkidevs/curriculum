# How Android Views are Drawn
author: caren

levels:

  - beginner

type: normal

category: must-know

links:

  - ‘[How Android Draws Views](https://developer.android.com/guide/topics/ui/how-android-draws.html)'

---
## Content

The way Android renders views is through a “layering” effect. The order that you declare child views in the XML layout file is the order in which they are drawn. As a result, sometimes views can overlap and block each other. This “stacking” effect is essentially the result of a two pass process that Android performs when laying out views. 

When Android first parses an XML layout file it creates a View tree. The View tree contains a combination of parent views and child views. The system then does a top-down traversal of the tree to assign each view a height and width. After every individual View stores their width and height, the system then does another traversal down the tree to position the views. 

Due to the way that Android traverses view trees multiple times when displaying the views, it’s advised to minimize the number of nested child views as much as possible. The more levels a view tree has, the longer it takes for the Android system to calculate the size and position of each view. 

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
