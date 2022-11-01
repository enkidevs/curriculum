---
author: nemanjaenki
category: discussion
type: normal
---

# What's an Array?

---
## Content

Arra is an ordered collection of items, accessible by their position in constant time[1].

> 💡 In most languages, all items of an array have to be the same type

They're useful when the order of elements matters or finding elements by their position happens often.

For instance, you could use an array to store the top 5 highest scores in a video game. 

```js
high_scores = [123, 99, 95, 87, 79]

// get 3rd best result
third_best = high_scores[2] // 95
```

On the other hand, if you want to keep track of all streets in your city, an array might not be as appropriate.

> 💡 Because both arrays and strings are sequences (a string is an array of characters), most of these lessons will apply to string interview problems too.

---
## Footnotes

[1: O(1) → Constant Time]

O(1) means your program will take the same amount of steps for 1 item and 1 million items.

For instance, using bookmarks, we can find a page in a single step regardless of how many pages a book has.