---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [MDN enctype and
    formenctype](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#attributes_for_form_submission){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Attributes (enctype & formenctype)

---

## Content

The HTML `formenctype` input form attribute is used to specify how form-data should be encoded before it's sent to the server.

It is only used for buttons with `type="submit"` and `type="image"`.

You could also use the `enctype` attribute on the `form` element. This way, you can decide the encoding type for the entire form, instead of specifying it for every `input`.

When using the `enctype` attribute (on the `form` element), its functionality is overwritten by the `formenctype` attribute (on the `input` element) **if both are present within the same form**.

If neither of the attributes are present, the default value is set to `application/x-www-form-urlencoded`.

When using `<input>` elements with the attribute `type="file"` it is necessary to set the value as `multipart/form-data`.

Setting the value to `text/plain` converts every space to a `+`, but no character is encoded.

Example:

```html
<form
 action="/action_page.asp"
 method="post">
  Name:
   <input type="text"
    name="fname"
    value="Ståle Refsnes">
   <button type="submit">
    Submit with encoding
   </button>
   <button
    type="submit"
    formenctype="text/plain">
    Submit without encoding
   </button>
</form>
```

![form-enctype](https://img.enkipro.com/a11ba364fa073f8389115e2a1394025b.png)

[View CodePen](https://codepen.io/enkidevs/pen/YvdRMb)

In the example above we have set all the spaces in the form to convert to a `+` with no character encoding.


---

## Practice

Which statement is true regarding `formenctype`?

???

- Specifies how the form-data should be encoded when submitted to a server.
- `Can be used only if method="get"`.
- `The values application/x-www-form-urlencoded and text/plain convert spaces into '-' symbols.`


---

## Revision

Which input form attribute is used to specify an encoding type for your form?

```html
???
```

- enctype
- form-data
- encode
- urlencoded
- form


---

## Quiz

### How much do you know about HTML input form attributes?


Which statement is not true regarding `formenctype`?

- The values `application/x-www-form-urlencoded` and `text/plain` convert spaces into "-" symbols.
- specifies how the form-data should be encoded when submitted to a server.
- The default value is `application/x-www-form-urlencoded`.
- The value `multipart/form-data` is required when using forms that have a file upload control.
