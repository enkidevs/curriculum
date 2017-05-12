# What Is a Data Structure?
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

links:
    - >-
        [What is a data structure?](http://www.bbc.co.uk/education/guides/z4tf9j6/revision/1){website}

---
## Content

A **data structure** is a particular pattern for organizing information in order to make interacting with that information in the ways we want less expensive.

If this is unclear, let's fall back to an example: *clothes in a wardrobe*. Usually, there are two types of people:
-  Those who fold their clothes and **take their time** arranging them into the wardrobe, making it much **easier to pick** one of those.
-  Those who **throw their clothes** into a pile and **deal with finding** a specific piece of clothing when they need it.

Both are valid way of doing laundry. The first one requires more work up-front, but less when it comes to using them. The second one takes less time when it comes to storing them, but makes the *operation* of finding clothes in the morning more challenging.

This is the trade-off you have to think about when you decide which data structure to use: what is the operation I want to take advantage of?

Another example: consider a list of names written down alphabetically in a notebook. It is easy to find a name in the alphabetized list, but adding a new name to the list in the correct spot is time consuming.

Conversely, it is time consuming to find a name in the unalphabetized list, but easy to add a new name.

We might describe the respective *pattern* of information in these two lists as a "sorted list" and an "unsorted list".

![test](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20800%20300%22%3E%3Cpath%20fill%3D%22none%22%20stroke%3D%22%2300f%22%20stroke-width%3D%222%22%20d%3D%22M1%201h798v298H1z%22%2F%3E%3Cpath%20fill%3D%22%23FF0%22%20d%3D%22M0%200h800v300H0z%22%3E%3Canimate%20attributeName%3D%22x%22%20attributeType%3D%22XML%22%20begin%3D%220s%22%20dur%3D%229s%22%20fill%3D%22freeze%22%20from%3D%22300%22%20to%3D%220%22%2F%3E%3Canimate%20attributeName%3D%22y%22%20attributeType%3D%22XML%22%20begin%3D%220s%22%20dur%3D%229s%22%20fill%3D%22freeze%22%20from%3D%22100%22%20to%3D%220%22%2F%3E%3Canimate%20attributeName%3D%22width%22%20attributeType%3D%22XML%22%20begin%3D%220s%22%20dur%3D%229s%22%20fill%3D%22freeze%22%20from%3D%22300%22%20to%3D%22800%22%2F%3E%3Canimate%20attributeName%3D%22height%22%20attributeType%3D%22XML%22%20begin%3D%220s%22%20dur%3D%229s%22%20fill%3D%22freeze%22%20from%3D%22100%22%20to%3D%22300%22%2F%3E%3C%2Fpath%3E%3Ctext%20font-family%3D%22Verdana%22%20font-size%3D%2235.27%22%20visibility%3D%22hidden%22%20transform%3D%22matrix%283%200%200%203%20100%20100%29%22%3EIt%26apos%3Bs%20alive!%20%3Cset%20attributeName%3D%22visibility%22%20attributeType%3D%22CSS%22%20to%3D%22visible%22%20begin%3D%223s%22%20dur%3D%226s%22%20fill%3D%22freeze%22%2F%3E%20%3CanimateMotion%20path%3D%22M%200%200%20L%20100%20100%22%20begin%3D%223s%22%20dur%3D%226s%22%20fill%3D%22freeze%22%2F%3E%20%3CanimateColor%20attributeName%3D%22fill%22%20attributeType%3D%22CSS%22%20from%3D%22rgb%280%2C0%2C255%29%22%20to%3D%22rgb%28128%2C0%2C0%29%22%20begin%3D%223s%22%20dur%3D%226s%22%20fill%3D%22freeze%22%2F%3E%20%3CanimateTransform%20attributeName%3D%22transform%22%20attributeType%3D%22XML%22%20type%3D%22rotate%22%20from%3D%22-30%22%20to%3D%220%22%20begin%3D%223s%22%20dur%3D%226s%22%20fill%3D%22freeze%22%2F%3E%20%3CanimateTransform%20attributeName%3D%22transform%22%20attributeType%3D%22XML%22%20type%3D%22scale%22%20from%3D%221%22%20to%3D%223%22%20additive%3D%22sum%22%20begin%3D%223s%22%20dur%3D%226s%22%20fill%3D%22freeze%22%2F%3E%3C%2Ftext%3E%3C%2Fsvg%3E)

Later on, you will be able to distinguish what data structure each example represents and how to use it efficiently.


---
## Revision

What is a data structure?

???
* A pattern for organizing information.
* A pattern for sorting information.
* A pattern for inserting information.
* An array of information.
