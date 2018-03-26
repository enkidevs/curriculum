---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: tip

notes: 'http://pathfindersoftware.com/2008/10/8-tips/'

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1104746/what-is-the-objective-c-equivalent-for-tostring-for-use-with-nslog){website}

---
# Define description for your custom classes

---
## Content

```
- (NSString *)description {
    return self.name;
}
```
Now when you log them with NSLog they’ll return a sensible string, instead of nil.