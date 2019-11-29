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

links:
  - '[HTML <button> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){documentation}'

---
# The `<button>` Element
---
## Content

The HTML `<button>` element may seem similar to a link `<a>` with a little more default style, but there are key differences:

* Buttons are best used *within* Forms.
* Buttons not used within Forms require JavaScript to have any functionality.

The default `<button>` element looks like this:

```html
<form action="/" method="post">
  <button>Submit</button>
</form>
```

![button-simple](https://img.enkipro.com/34850e7186f600675efdce8a5ddd2f84.png)

[View CodePen](https://codepen.io/enkidevs/pen/dKQxjM)

In this case, both the button and the input look and behave the same.

```html
<form action="/" method="post">
  <button>Submit</button>
  <input type="submit">
</form>
```

[View CodePen](https://codepen.io/enkidevs/pen/rryRQp)

The `<button>` element has a slight edge over the `<input>` as both images and text can be placed within it like this:

```html
<button>
  <img src="submit-icon.svg" alt="">
  Submit
</button>
```

![button-image-text](https://img.enkipro.com/e3328ae1e6d8d355596f342c02d25c44.png)

[View CodePen](https://codepen.io/enkidevs/pen/VdqZdQ)

**Note:** Buttons have no default action upon click. This is why they are best tied to forms or advanced uses of JavaScript.

---
## Practice

Buttons are best used in what relationship of an HTML form?

???

Match the following terms with their descriptions:


??? are best when they change the web pages.
??? are best when submitting signup or purchase actions.

* inside
* links
* buttons
* outside
* in connection with
* with JS scripts
* actions
* elements
* href's
* src's

---
## Revision

What action will be taken by default when a `<button>` is clicked?

???

If a button is outside of a form, what must be used to assign an action to it?

???

* Nothing.
* `JavaScript`
* JavaScript is called.
* Link to another web page.
* Link to an existing web page.
* `CSS`
* `<formaction>`
* `the button type`


---
## Quiz

### How much do you know about buttons?

`<button>Submit</button>` in a `<form>`, by default, is identically to what code?

```html
<form action="/" method="post">
  ???
</form>
```

* `<input type="submit" value="Submit">`
* `<input type="submit" value="Button">`
* `<input type="button" value="Submit">`
* `<input type="button" value="Submit">`
