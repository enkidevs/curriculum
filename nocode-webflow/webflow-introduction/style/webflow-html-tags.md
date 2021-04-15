---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# HTML tags


---

## Content

HTML tags are used to easily control the styling of certain element types.

For instance, you can use the `Paragraph` tag to edit all paragraph elements in your webpage at the same time (by editing just one of them).

All elements have tags, however, not all can be edited through their elements tag. Some elements can only be styled/edited by first creating/assigning them a class. 

The elements that can be edited without creating a class are:

```html
Body (all pages)
H1 Heading
H2 Heading
H3 Heading
H4 Heading
H5 Heading
H6 Heading
Paragraph
Link (text links, buttons, link blocks)
Image
Unordered list
Ordered list
List item
Label
Strong (inline bold text)
Ems (inline italic text)
Blockquote
Figure (in rich text)
Figure Caption (in rich text)
```

The `Body` tag is the main tag and the main element you get when you create a blank page.

It is good practice to add some styling and rules to your `Body` tag so that any element you place in it will inherit those styling properties.

If you want all elements of your web page to have `Times New Roman` text with a height of `13`, you can just set that up in the `Body` tag.

Example image:

![selected-body](https://img.enkipro.com/0e5421231d0550b111ccc4af6748d60b.png)

In the image above, we have selected the `Body` element in the `Navigator`, then from the `Style` panel, we can choose the "Selector".

In the `Selector`, there are 3 possible colors:

- `Tags` labeled pink
- `classes` labeled blue
- `states` labeled green.

As you can see in the image we have a blue `Body` and a pink `Body (All Pages)`. The blue one is a class and only corresponds to the selected page's body, whereas the pink one is a tag and corresponds to all body elements within our webpage.

Selecting the pink one and editing the typography will make all body elements inherit the same rules as well as any elements within them.

This means that setting the color of the text to red in the body element will make all other elements nested in it have the same color text property.

To override the top-level styling and avoid inheriting anything, you can just create a new class for the element you don't want to inherit anything.

To edit all elements of the same tag, just select an existing element (or create a new one), add the corresponding pink tag to it from the `Selector` field in the `Style` panel and anything you apply to that element will also be applied to any element with the same tag.

Here is an example where all elements are nested inside the body element and we change the typography.

![example-color-change](https://img.enkipro.com/4577f11a25976058e0f71571b80e97fd.gif)

As you can see, all elements that have text inherit the body element's styling properties.


---

## Practice

Which color are HTML tags in Webflow?

???

- Pink
- Green
- Blue
- Red
 
