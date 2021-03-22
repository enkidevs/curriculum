---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Divisions


---

## Content

The division (`div` block) is one of the most used elements when creating a webpage.

You can use divisions to group elements, create space between other elements, style elements differently per div block, you can also nest div blocks and have different stylings and other properties per nested div block. However, without CSS, Divs have no effect on the content within them.

Because a division is an element, you can create one as you would create a section or a container[1].

An important feature of division blocks is that they can be used to duplicate content. When a `division` is duplicated, the duplicate keeps all of the styling, content, and positioning settings.

Another important feature is that changes to a duplicated division propagate to all of its copies, regardless of the page it is on. The reason behind this is that the duplicate keeps the same class name (an identifier used for styling). When changing the style of a class, all the other elements with the same class name will be changed.

These changes only apply to the styling. Editing the content (like changing the text) will not update all other duplicated divisions. 

If you don't want your styling changes to be propagated, make sure you change the class name of the division element.

Let's take a look at an example. In this image you can see a division which contains the container and column created previously.

![basic](https://img.enkipro.com/8bc586cbb393149adcb522aaab1b5678.png)

Notice how the elements are all over the place. Using the division, we can apply formatting such that all the children elements will be affected. Here is the same division with a simple alignment to the center and positioning applied:

![with-positioning](https://img.enkipro.com/8cf567e508ab3f56669cb98417451c19.png)


---

## Practice

Without CSS or HTML do divisions have no effect on the content within them.

```plain-text
???
```

- CSS
- HTML


---

## Footnotes

[1:Creating elements]
As a reminder, you can create a division in these ways:

- Click anywhere on the canvas and left-click a div element from the `Add Elements` panel to add it to the previously clicked position.
- Drag and drop a div element from the `Add Elements` panel anywhere on the canvas.
- Drag and drop a div element from the `Add Elements` panel to a position in the Navigator.
