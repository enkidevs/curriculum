---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - obscura

---
# The `height` & `width` Attributes
---
## Content

When using HTML input form attributes, if your input is of type `image` you can set it's height and width properties. These properties are set in Pixels(px)

Example:
```html
<form
  action="/page.php">
  Full name:
    <input type="text"
      name="fname"><br>
  <input type="image"
    src="submit.gif"
    alt="Submit"
    width="36" height="36">
</form>
```

It is very important to set both the height and width in HTML to reserve space while the page loads. If you do not set these properties, the browser won't know how much space to allocate for the image and your web page can change during loading.
**Note: never specify only the height or only the width property, always specify both.**

Also, you can edit the height and width properties using CSS rules.

---
## Practice

Which statements are not true regarding height & width attributes within forms?

???

* CSS cannot assign height & width attributes within forms.
* Important to add to reserve space during page load.
* The height attribute is used only with `<input type="image">`.
* The measurements are in pixels.

---
## Revision

Complete the code by adding the appropriate input form attributes to assign the size of the submit button (20 pixels wide by 30 pixels tall).

```html
<form
 action="file.php">
  Name:
    <input type="text"
      name="name"><br>
  <input type="image"
    src="submit.svg"
    alt="Submit"
    ???="20" ???="30">
</form>
```

* width
* height
* wide
* tall
* vert
* hor

---
## Quiz

### How much do you know about HTML input form attributes?

Identify which statement is true regarding the use of height and width with input form attributes?

???

 * Both the height and width attribute are used only with `<input type="image">`.
 * The height attribute is used with `<input type="image">` and `<input type="button">`.
 * The width attribute is used with `<input type="image">` and `<input type="button">`.
 * You can only set the attributes height and width with CSS.
 
