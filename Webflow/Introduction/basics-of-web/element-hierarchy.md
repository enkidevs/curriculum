---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

---

# Element Hierarchy

---
## Content

An element is an HTML component of a webpage. It can be a paragraph, image, list, link, button, label, navigation bar and more.

Essentially all components of a webpage are HTML elements.

The `Element Hierarchy` is how elements behave with respect to one another based on their "rank". 

There are "Parent", "Sibling" and "Child" elements.

In `Webflow` all elements are boxes.

These boxes can be nested in each other, be of different sizes and have different text styling. 

For instance, let's say we have a single container element.

Now we nest 2 image elements inside the container.

The Container is the "Parent", the 2 image elements are the "Child" elements of the container, and since the 2 image elements are on the same level they are called "Sibling" elements.

We can also nest another element within one or both of the image elements. Now, those new elements are the child elements of the image elements.

This hierarchy affects how elements react to one another.

For instance, if our "Parent" container element is of fixed size, then any of its child elements also have a fixed size a little smaller than the parent element. Also, if we move the parent element, we also move all of the child elements as well as their child elements. We can also set a specific text styling to a parent element and have the same styling on all of its child elements.

The easiest way to view the Hierarchy is in the `Navigator` panel.

The hierarchy can be visualized in the Navigator panel. Each child element is slightly indented compared to its parent element.

![example-navigator-hierarchy](https://img.enkipro.com/a64eaf5195e98bb9a52128a9d5491031.png)

In the image above, the "body" element is the top parent level element. 

The 2 `Section` elements are the child elements of the "body` element and are also "Sibling" elements since they are on the same level.

---
## Practice

Which sentence is true?

???

* The `Element Hierarchy` is how elements behave with respect to one another based on their "rank". 
* The `Element Hierarchy` is used to navigate through the webpage.