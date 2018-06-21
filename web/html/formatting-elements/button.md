---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

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

Also, the `<button></button>` button is easier to style than the `<input type="button">` button. This is because(as mentioned above) the `<button></button>` can contain many elements within it(`<i>`, `<em>`, `<b>`, `<strong>`, etc...), where you can apply different styles to each element's content.

On the other hand, the `<input type="button">` only accepts a text value.

`<button>` element-specific attributes:
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

The `<button>` element also supports all global attributes. To learn more about global attributes check the `more info` section at the bottom of this insight.

The above mentioned element-specific attributes explained:

1. `autofocus` is of type Boolean and if present sets the focus for that input upon page load. Of course, the user can just click anywhere else and change the focus. Also, there can be only one form input `autofocus` attribute per webpage or document.

2. `autocomplete` is used to give the user the option to autocomplete a form with previous inputs from other(or the same) website.

3. `disabled` is of type Boolean and if present forbids the user from pressing the button. Also, if the button is in a form or `<fieldset>` element, and that element has a `disabled` attribute, then the button inherits it. Otherwise, if no disabled attribute is present the button is clickable.

4. `form` attribute is used to associate a button to a form. To do so, the value of the buttons `form` attribute has to be the same as the `id` attribute of the `<form>` element. Doing this, lets you associate any `<button>` element with any `<form>` element within the same document. This means you can also associate a button to a `<form>` element even though the button is not a direct descendant of that form.

5. `formaction` is used to specify the URL of the program which processes the information submitted by that button. Also, if you add the `formaction` attribute it will override the `action` attribute of the buttons form owner.

6. `formeenctype` is used to specify the form-data when a form is submitted. Meaning, it specifies which type of data the form submits to the server and how it's encoded(only works for submit buttons). There are 3 possible values for `formenctype`:
  1. `application/x-www-form-urlencoded` (default)
  2. `multipart/form-data` 
  3. `text/plain`
  
The default value `application/x-www-form-urlencoded` is used for any text/ASCII data. The value `multipart/form-data` is required when using forms that have a file upload control; `<input type="file">`. Also, if you add the `formenctype` attribute it will override the `enctype` attribute of the buttons form owner.

7. `formmethod` is used to specify which HTTP method will be used by the browser when submitting the form-data. There are two possible values for the `formmethod` attribute:
  1. `method="get"`
  2. `method="post"`
  
When a form is submitted the `method="get"` appends form data to the URL with `?` as separators. The method is useful for when the user wants to bookmark the result or when the form contains only ASCII characters. Also, it is not good to use the method="get" to pass sensitive information. If passed with this method the information will be visible in the browsers address bar.

The `method="post"` does not append to the URL, but rather sends the form data as an HTTP post transaction(When submitted, the data is included in the body of the form).  Also, if you add the `formmethod` attribute it will override the `method` attribute of the buttons form owner.

8. `formnovalidate` is of type Boolean and is used to specify that the form should not be validated upon submission.  Also, if you add the `formnovalidate` attribute it will override the `novalidate` attribute of the buttons form owner.

9. `formtarget` is used to indicate where to display the response upon submision of the form. There are 4 possibble values:
  - `_self`
  - `_blank`
  - `_parent`
  - `_top`
  
`_self` is the default value if the attribute is not specified and it displays the response in the same window.

`_blank` value displays the response in a new window/tab.

`_parent` value displays the response into the parent window of the current one. If there is no parent, this option will behave the same as `_self`.

`_top` value displays the response into the top-level window (that is, the window that is an ancestor of the current one and has no parent). If there is no parent, this option will behave the same as `_self`.

Also, if you add the `formtarget` attribute it will override the `target` attribute of the buttons form owner.

10. `name` is used to give the button a name, and that name is also submitted with the forms data.

11. `type` is used to indicate the type of the button. There are 3 possible values:
  - `button`
  - `reset`
  - `submit`
  
The `type="button"` has no initial/default behavior. This is used when you want client-side scripts to trigger when events occur.

The `type="reset"` is used to reset all the values to default in the form the button is associated with.

The `type="submit"` is used to submit the forms data to the server. This value is also the default button type. Meaning, if no other value is set for `type` or if `type` is not present at all.)

12. `value` is used to set the initial value of the button.


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


