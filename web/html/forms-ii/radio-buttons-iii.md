---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML Radio
    Button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Default Values for Radio Buttons


---

## Content

If you want your form with radio buttons to have a default value, you should add the `checked` attribute.

Same example with `checked` added:

```html
<form>
 <p>
   Please select your gender:
 </p>
  <div>
   <input
      type="radio" id="gender1"
      name="gender" value="male" checked>
   <label
      for="gender1">Male
   </label>

   <input
      type="radio" id="gender2"
      name="gender" value="female">
   <label
      for="gender2">Female
   </label>

   <input
      type="radio" id="gender3"
      name="gender" value="other">
   <label
      for="gender3">Other
   </label>
  </div>
  <div>
    <button
      type="submit">Submit
    </button>
  </div>
</form>
```

![radio-selected](https://img.enkipro.com/ce8d1eb374eeaf7046c6b3916ed11443.png)

Furthermore, you can also have as many radio groups as you require per web page or document. The only thing you need to do is give each radio group a unique `name`.

You can also style your radio groups with CSS. For instance, you can modify the colors of the radio buttons, add a fade-out effect when one button is selected, etc.


---

## Practice

Write the form code that creates a radio button with the button already selected.

```html
<??? ???="???"
     name="topic"
     value="item" ???>
```

- input
- type
- radio
- checked
- name
- value
