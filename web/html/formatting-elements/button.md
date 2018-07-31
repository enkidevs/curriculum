---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10
  web.html-forms.2: 10


aspects:
  - introduction
  - workout

links:
  - '[CodePen: button Element](https://codepen.io/enkidevs/pen/dKQxjM){code}'
  - '[CodePen: Button element with Text & Image](https://codepen.io/enkidevs/pen/VdqZdQ){code}'
  - '[MDN docs for button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Button
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

![button-simple](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2257%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2257%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2232%22%3ESubmit%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2250%22%20height%3D%2217%22%20x%3D%2219%22%20y%3D%2220%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/dKQxjM)-->

In this case, both the button and the input look and behave the same.

```html
<form action="/" method="post">
  <button>Submit</button>
  <input type="submit">
</form>
```

<!--[View CodePen](https://codepen.io/enkidevs/pen/rryRQp)-->

The `<button>` element has a slight edge over the `<input>` as both images and text can be placed within it like this:

```html
<button>
  <img src="submit-icon.svg" alt="">
  Submit
</button>
```

![button-image-text](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2277%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%225.66906%25%22%20y2%3D%2296.75984%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23E3E3E3%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23F7F7F7%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2277%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22url%28%23a%29%22%20stroke%3D%22%23AFAFAF%22%20d%3D%22M24%2020h66c2.20914%200%204%201.79086%204%204v29c0%202.20914-1.79086%204-4%204H24c-2.20914%200-4-1.79086-4-4V24c0-2.20914%201.79086-4%204-4z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2260%22%20y%3D%2252%22%3ESend%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23000%22%20fill-rule%3D%22nonzero%22%20d%3D%22M42%2022L27%2033.25V52h30V33.25L42%2022zm5.625%2016.88783L42%2043.30803l-5.625-4.4202V33.25h11.25v5.63783zm-10.52584%202.95348L28.875%2048.8909V35.37953l8.22416%206.46178zM42%2045.69203l3.39844-2.66965%208.2855%207.10262H30.31606l8.28645-7.10268L42%2045.69203zm13.125-10.3125V48.8909l-8.22328-7.0496%208.22328-6.46177zm-.77637-1.77428L49.5%2037.41566V31.375h-15v6.03879l-4.84863-3.8086L42%2024.34376l12.34863%209.2615zM45.75%2036.0625h-7.5v-.9375h7.5v.9375zm0%201.875h-7.5V37h7.5v.9375zm0%201.875h-7.5v-.9375h7.5v.9375z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/VdqZdQ)-->

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
