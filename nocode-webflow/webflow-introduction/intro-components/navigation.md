---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Navigation


---

## Content

All websites have some form of navigation to make it easier for users to find their way through the webpage.

For this purpose, Webflow provides a powerful component called `Navbar`.

By default, `Navbar` comes with the following elements:

- logo (an image element)
- navigation links
- invisible button
  - used when the screen is too small to show the `Navbar`, just like on mobile

Here is an example of an empty `Navbar`:

![simple-navbar](https://img.enkipro.com/c46297799897d8e9c66a76b05c022b40.png)

And here is an example of a `Navbar` with an `<Enki/>` logo and one more link section:

![simple-edit](https://img.enkipro.com/6704bbc77b41a25623ec6bf83d5659a4.png)

Because the `Navbar` is a component, you add it as you would add an ordinary element[1].

To add a new link element, select the `Navbar` and add a new link in the `Navbar Settings` panel on the right side of the screen.

![add-link](https://img.enkipro.com/2163666efb91364e793136f5161782de.png)

Above the `Add link` button there is a `Link Settings` section. The five buttons are used to determine what kind of link you want. After choosing an option, the bottom part of the `Link Settings` will change. 

For instance, choosing the first `URL` button will give a placeholder for a custom link with a checkbox button to "Open in new tab".

![url-link](https://img.enkipro.com/d45c698a048e78ae939ffe784b2a2c12.png)

Phone link:

![phone-link](https://img.enkipro.com/6d892643d3f933751e8925f062e61f19.png)

E-mail link:

![email-link](https://img.enkipro.com/0dbf5ffadd4cd81138a5586043583e0a.png)


---

## Practice

The `Navbar` is NOT the only element you can place a navigation link in.

???

- False
- True


---

## Footnotes

[1:Adding elements]
If you forgot how to add elements, here is a reminder:

- Click anywhere on the Canvas and left-click a `Navbar` element from the `Add Elements` panel to add it to the previously clicked position.
- Drag and drop a `Navbar` element from the `Add Elements` panel anywhere on the canvas.
- Drag and drop a `Navbar` element from the `Add Elements` panel to a position in the `Navigator`.
