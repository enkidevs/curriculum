---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Element Hierarchy


---

## Content

Essentially, all components of a webpage are HTML elements. An HTML element can be a paragraph, image, list, link, button, label, navigation bar and more.

The element hierarchy is how elements behave with respect to one another based on their type. The type can be either **parent**, **sibling**, or **child**.

In Webflow, all elements are boxes. These can be nested, have different sizes or text styling.

For instance, let's say we have a `container` element in which we nest two `image` elements.

The `container` will then be **parent**, and the two `image` elements will be its **children**. Because both `image` elements are on the same level, they are called **siblings**. 

Nesting is not limited to one level. You can nest another element inside one of the `image`s. This new element will then become the **child** of the `image` element.

This hierarchy affects how elements react to one another. If the **parent** container element is of fixed size, then any of its child elements will also have a fixed size (a little smaller than the parent element). If you set a specific text styling to a parent element, then all its children will have the same styling (unless you change it). The general idea is that elements **inherit** properties from their **parents**.

When looking in the `Navigator` panel, you can observe the element hierarchy:

![example-navigator-hierarchy](https://img.enkipro.com/a64eaf5195e98bb9a52128a9d5491031.png)

Each child element is slightly indented compared to its parent element. The `body` element is the top parent element. The two `Section` elements are the children of `body` element and are also siblings.


---

## Practice

Which sentence is true?

???

- The element hierarchy is how elements behave with respect to one another based on their type. 
- The element hierarchy is used to navigate through the webpage.
