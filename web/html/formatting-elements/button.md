---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10

tags:
  - introduction

links:
  - '[MDN docs for button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Button
---
## Content

The HTML `<button>` element is used to create clickable buttons. These buttons can be used anywhere, either in a document, on a website, or in forms. The button itself has no special styling, however, it is editable with the appropriate CSS properties.

Example of a simple button:
```
<button
  name="button">
  Submit
</button>
```

**Note: There are two types of buttons in HTML.**
  1. The one mentioned above: `<button></button>`
  2. and `<input type="button">`

The `<button></button>` button can contain other HTML elements as their labels and it has many attributes for multiple forms and actions.

The `<button></button>` button is easier to style than the `<input type="button">` button. This is because(as mentioned above) the `<button></button>` can contain many elements within it(`<i>`, `<em>`, `<b>`, `<strong>`, etc...), where you can apply different styles to each element's content.

On the other hand, the `<input type="button">` can only accept a text value.

The `<button>` element has 12 element-specific attributes:
  1. `autofocus`
  2. `autocomplete`
  3. `disabled`
  4. `form`
  5. `formaction`
  6. `formenctype`
  7. `formmethod`
  8. `formnovalidate`
  9. `formtarget`
  10. `name`
  11. `type`
  12. `value`

Also, the `<button>` element supports `global attributes`. To learn more about `global attributes` check the `more info` section at the bottom of this insight.

All attributes will be explained in the next insight.

**Note: When it comes to forms, buttons are best used inside of an HTML form.** Meaning they have little to no functionality outside of them. On the other hand, if you want to assign an action/functionality to a button outside of an HTML form, you have to use JavaScript.


Example with both buttons:

`<button>` button:
```
<button>
  Submit
</button>
```

`<input type="button">` button:
```
<form action="/" method="post">
  <input type="submit" value="Submit">
</form>
```

In the example above, both pieces of code produce the exact same button, only difference, the `<button>` element is easier to style than the other one.

Last but not least, even though you can use buttons to change a webpage, it is best to use links to do so, and use buttons when submitting signup or purchase actions.

**Note: Buttons have no default action upon click. Actions have to be added.**


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

```
<form action="/" method="post">
  ???
</form>
```

* `<input type="submit" value="Submit">`
* `<input type="submit" value="Button">`
* `<input type="button" value="Submit">`
* `<input type="button" value="Submit">`
