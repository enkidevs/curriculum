---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.4: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Checkboxes with Legend](https://codepen.io/enkidevs/pen/qyRaPO){code}'
  - '[CodePen: Form Checkbox checked by default](https://codepen.io/enkidevs/pen/BPpLYY){code}'
  - '[MDN docs for checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox){website}'
  - '[StockOverflow: Multiple Checkboxes](https://stackoverflow.com/questions/18745456/handle-multiple-checkboxes-with-a-single-serverside-variable){code}'
  

---
# Checkbox Groups
---
## Content

The HTML input forms of type `checkbox` are square boxes that can be ticked or checked to be activated. They allow you to either select none, a single or more values at once.

**Note:** A similar input form type is `radio`. This input type is also clickable, however, unlike with checkboxes, if multiple options are present, the radio buttons can have only one option checked at a time.

Example with multiple checkboxes:
```
<form>
  <legend>
    Choose favorite music genre/s
  </legend>
    <div>
     <input
        type="checkbox" id="rock"
        name="genre" value="rock">
     <label
        for="rock">Rock
     </label>
    </div>
    <div>
     <input
        type="checkbox" id="country"
        name="genre" value="country">
     <label
        for="country">Country
     </label>
    </div>
    <div>
      <input
          type="checkbox" id="jazz"
          name="genre" value="jazz">
      <label
          for="jazz">Jazz
      </label>
    </div>
    <div>
      <input
        type="checkbox" id="house"
        name="genre" value="house">
      <label
        for="house">House
      </label>
    </div>
    <div>
      <input
        type="checkbox" id="blues"
        name="genre" value="blues">
      <label
        for="blues">Blues
      </label>
    </div>
    <div>
      <input
          type="checkbox" id="reggae"
          name="genre" value="reggae">
      <label
          for="reggae">Reggae
      </label>
    </div>
    <div>
      <input
          type="checkbox" id="folk"
          name="genre" value="folk">
      <label
          for="folk">Folk
      </label>
    </div>
    <div>
      <button
        type="submit">Submit
      </button>
    </div>
</form>
```

![checkbox-music](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20209%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22209%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%20150%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3EFolk%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%20131%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3EReggae%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%20112%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3EBlues%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%2093%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3EHouse%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%2074%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3EJazz%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%2055%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3ECountry%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2839%2036%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3ERock%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%20transform%3D%22translate%2820%2018%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2214%22%3EChoose%20favorite%20music%20genre%2Fs%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%2239%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%2258%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%2277%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%2296%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%22115%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%22134%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%20transform%3D%22translate%2827%20173%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2210%22%3ESubmit%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2221%22%20y%3D%22153%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2250%22%20height%3D%2217%22%20x%3D%2219%22%20y%3D%22171%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/qyRaPO)-->

In the example above, we have 7 checkboxes, each with the same name - `genre` and each with a unique value that is used to identify each checkbox. Also, each button has an id. This id is used with the `<label>` element's `for` attribute to link the label to the checkbox.

**Note: By adding the label, we allow the user to have a larger clickable area for the checkboxes. That is, if the user presses anywhere in the `folk` label, that label's checkbox will be selected. This option is really useful as it makes it easier to select a value both for big and small screen sizes.**

The 'name' & 'value' attributes work as a pair in keeping track of the data sent and are both important to use with checkboxes. For instance, if the user picks `folk` and `reggae` the name/value pairs would be `genre=folk&genre=reggae`. This is something the client never sees as the data is sent upon submission of the form. 

When this data is submitted and sent to the server, it can be captured as an array of related values.

<!--Handling multiple checkboxes with a single server variable: '[Check out Here](https://stackoverflow.com/questions/18745456/handle-multiple-checkboxes-with-a-single-serverside-variable)'-->

Furthermore, you can add a `checked` attribute to make a checkbox checked by default. Additionally, if the answers you provided are not enough, you can add an `other` checkbox with a `textfield` for the user to type an answer themselves.

Example:
```
<form>
 <div>
    <input
       type="checkbox" id="folk"
       name="genre" value="folk" checked>
    <label
       for="folk">Folk
    </label>
 </div>
 <div>
    <input
       type="checkbox" id="other"
       name="genre" value="other">
    <label
       for="other">Other
    </label>
    <input
       type="text" id="otherValue"
       name="other">
   </div>
</form>
```

![checkbox-folk](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%2076%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2276%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2238%22%20y%3D%2232%22%3EFolk%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20fill-rule%3D%22nonzero%22%20transform%3D%22translate%2820%2020%29%22%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%22.5%22%20y%3D%22.5%22%20fill%3D%22%233B99FC%22%20stroke%3D%22%233795F8%22%20rx%3D%222%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M7%208h1v1H7zm1-2h1v1H8zM6%209h1v1H6zM5%209h1v1H5zM4%208h1v1H4zM3%207h1v1H3z%22%2F%3E%3Cpath%20fill%3D%22%23AFCDEC%22%20d%3D%22M3%208h1v1H3zm1%201h1v1H4zm0-2h1v1H4zm3-1h1v1H7zm1-1h1v1H8zm1-2h1v1H9zm1%200h1v1h-1zm0%201h1v1h-1zM6%208h1v1H6zM5%208h1v1H5z%22%2F%3E%3Cpath%20fill%3D%22%231977DA%22%20d%3D%22M4%2010h1v1H4zm1%201h1v1H5zm1%200h1v1H6zm1-1h1v1H7zm1-2h1v1H8zm1-1h1v1H9zm1-2h1v1h-1zM3%209h1v1H3z%22%2F%3E%3Cpath%20fill%3D%22%23AFCDEC%22%20d%3D%22M5%2010h1v1H5zm1%200h1v1H6z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M7%207h1v1H7zm2-2h1v1H9zm0-1h1v1H9z%22%2F%3E%3C%2Fg%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2238%22%20y%3D%2252%22%3EOther%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2214%22%20height%3D%2214%22%20x%3D%2220%22%20y%3D%2240%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Cpath%20stroke%3D%22%23CCC%22%20d%3D%22M82%2037h118v18H82z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/BPpLYY)0-->

Along with the `checked` and `unchecked` state, checkboxes have a third state called `indeterminate`. In this state, you can't tell if the checkbox is toggled on or off. Checkboxes in this state have a horizontal line in the box. The most common use for this is when a checkbox option has multiple checkbox sub-options within it. If all sub-options are selected, then the parent checkbox is also selected. On the other hand, if any of the sub-options have a different state from one another the parent checkbox is in the indeterminate state.

![checkbox-indeterminate](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20183%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22183%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2294%22%20y%3D%2291%22%3EBook%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2231%22%3EComplete%20the%20recipe%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2256%22%20y%3D%2255%22%3EEnchantment%20table%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%2285.5%22%20r%3D%222.5%22%20fill%3D%22%23000%22%2F%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%22104.5%22%20r%3D%222.5%22%20fill%3D%22%23000%22%2F%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%22123.5%22%20r%3D%222.5%22%20fill%3D%22%23000%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2276.5%22%20y%3D%2279.5%22%20fill%3D%22%233B99FC%22%20fill-rule%3D%22nonzero%22%20stroke%3D%22%233795F8%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2236%22%20y%3D%2243%22%20fill%3D%22%233B99FC%22%20fill-rule%3D%22nonzero%22%20stroke%3D%22%233795F8%22%20rx%3D%222%22%2F%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-linecap%3D%22square%22%20d%3D%22M39.5%2049.5h6m-6%201h6%22%2F%3E%3Cpath%20stroke%3D%22%231B78DC%22%20stroke-linecap%3D%22square%22%20d%3D%22M40.5%2051.5h4%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22nonzero%22%20d%3D%22M83%2087h1v1h-1zm1-2h1v1h-1zm-2%203h1v1h-1zm-1%200h1v1h-1zm-1-1h1v1h-1zm-1-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23AFCDEC%22%20fill-rule%3D%22nonzero%22%20d%3D%22M79%2087h1v1h-1zm1%201h1v1h-1zm0-2h1v1h-1zm3-1h1v1h-1zm1-1h1v1h-1zm1-2h1v1h-1zm1%200h1v1h-1zm0%201h1v1h-1zm-4%204h1v1h-1zm-1%200h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%231977DA%22%20fill-rule%3D%22nonzero%22%20d%3D%22M80%2089h1v1h-1zm1%201h1v1h-1zm1%200h1v1h-1zm1-1h1v1h-1zm1-2h1v1h-1zm1-1h1v1h-1zm1-2h1v1h-1zm-7%204h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23AFCDEC%22%20fill-rule%3D%22nonzero%22%20d%3D%22M81%2089h1v1h-1zm1%200h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22nonzero%22%20d%3D%22M83%2086h1v1h-1zm2-2h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2294%22%20y%3D%22111%22%3EDiamonds%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2294%22%20y%3D%22129%22%3EObsidian%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2214%22%20height%3D%2214%22%20x%3D%2276%22%20y%3D%22117%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2214%22%20height%3D%2214%22%20x%3D%2276%22%20y%3D%2299%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Cpath%20stroke%3D%22%23979797%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M33.5%2025.5h-13m0%200v135.05925m1-.05925H298m.5%200V26.3637m-116-.8637l116-.5%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--This `indeterminate` state is shown with CSS styling and CSS Tricks. More on this: '[Indeterminate state checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox)'-->


---
## Practice

Checkboxes have three possible states, these are `checked`, `unchecked` and:

???

* `indeterminate`
* `on`
* `off`
* `intermidiate`
* There is no third state

---
## Revision

Create a checkbox group with two checkboxes and larger clickable area

 ```
<???>
  <legend>
    Choose favorite meal
  </legend>
    <div>
     <???
        type="???" id="soup"
        name="meal" value="soup" ???>
     <???
        for="soup">Soup
     <???>
    </div>
    <div>
     <???
        type="???" id="burgers"
        name="meal" value="burgers">
     <???
        for="burgers">Burgers
     </???>
    </div
<???>
```

* form
* input
* checkbox
* checked
* label
* /label
* input
* checkbox
* label
* /label
* /form
* squarebox
* /squarebox
* button
* /button
* userInput

---
## Quiz

### How much do you know about checkboxes?

How are checkboxes styled?

???

* With CSS
* Can't be styled
* With proper HTML
* Using the `style` menu each browser provides for HTML editting
