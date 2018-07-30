---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10
  web.embed-media.0: 10

aspects:
  - introduction
  - workout
  - obscura

links:
  - '[CodePen: Submit Image Button](https://codepen.io/enkidevs/pen/vrvvJO){code}'
  - '[MDN docs for image buttons](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image){website}'

---
# Image Button
---
## Content

The HTML input form of type `image` is used to create a submit button with a graphical image instead of the default text.

Example:
```
<form
  action="/page.php">
  Full name:
    <input type="text"
      name="fname">
  <input type="image"
    src="send.png"
    alt="Submit"
    width="100" height="100">
</form>
```

![form-image-button](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22157%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22157%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFull%20Name%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M16%2058h85v85H16z%22%2F%3E%3Cg%20fill%3D%22%230099E5%22%20fill-rule%3D%22nonzero%22%3E%3Cpath%20d%3D%22M56.42857%2065.09124c-8.59355.63871-16.43226%204.17235-22.5871%2010.18618-8.09585%207.89677-11.97788%2019.07834-10.54285%2030.30968%201.7917%2014.04331%2011.69585%2025.73917%2025.29954%2029.87834%2010.51797%203.20184%2022.22212%201.3023%2031.13917-5.04332%2010.9576-7.80553%2016.65622-20.75392%2014.96405-34.00922-1.7917-14.04332-11.69585-25.73917-25.29954-29.87834-4.04792-1.23594-8.76774-1.75852-12.97327-1.44332zM81.2636%2077.97327c.40645.23226.6553.61383.73824%201.12811.04148.19908-1.21106%207.88019-3.88202%2023.8811-3.71613%2022.31337-3.9401%2023.60738-4.16406%2023.96406-.29032.47281-.8046.76314-1.34378.76314-.30691%200-1.86636-.59724-8.0295-3.06083l-7.64792-3.05254-1.59262%202.66268c-.87097%201.4599-1.70876%202.7871-1.84977%202.9447-.3235.34838-.68848.50599-1.16959.50599-.51428%200-.87926-.1659-1.19447-.54747-.14101-.18249-1.54286-2.56313-3.1106-5.30046l-2.84516-4.97696-6.25438-2.49677c-5.75668-2.306-6.27926-2.52996-6.51981-2.81198-.4894-.56406-.53088-1.52627-.08295-2.02397.23226-.24884%2047.38064-31.69493%2047.67097-31.78617.34838-.11613.87926-.02489%201.27742.20737z%22%2F%3E%3Cpath%20d%3D%22M62.55023%2099.6894c-7.96313%208.54378-14.48295%2015.56959-14.49124%2015.61936%200%20.04147.95391%201.75023%202.1235%203.78248l2.1401%203.70784.17418-.26544c.09954-.14101%205.45807-8.5106%2011.91153-18.58894%206.45345-10.08664%2011.9447-18.6553%2012.20184-19.06175.25714-.39816.45622-.72166.43963-.72166-.0083%200-6.5364%206.99263-14.49954%2015.52811zm-7.61475-1.50968c-9.78801%206.51982-17.79262%2011.88664-17.79262%2011.91982%200%20.03318%202.09861.91244%204.67004%201.94101%202.56314%201.02857%204.72811%201.93272%204.81106%201.99908.13272.11613.8295-.61382%209.40646-9.79631%205.09308-5.45807%2010.941-11.72074%2012.99815-13.9272%202.05714-2.19815%203.73272-3.99815%203.72446-3.99815-.01662.0083-8.02953%205.34194-17.81755%2011.86175zm12.38434%204.46268l-10.1364%2015.73548.38985.07465c.21567.03318%203.39263%201.27742%207.05899%202.76222%203.66636%201.4765%206.66912%202.67926%206.67742%202.66267.03318-.04148%206.18802-36.92903%206.1632-36.94563-.00836-.00829-4.57887%207.059-10.15306%2015.7106z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2039.5h130v18h-130z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/vrvvJO)-->

In the example above, the input type is set as `image`. The image source is currently in the same folder as the HTML page with the filename `send.png`. The `width` and `height` properties are set in pixels, both to `100` by `100`.

---
## Practice

Write the form code that creates an image button.

`<??? ???="???" ???="button.png" alt="Send" >`

* input
* type
* image
* src
* alt
* name
* submit

---
## Revision

What code is used to replace a form's submit button with an image?

???

* `<input type="image" src="button.png" >`
* `<img type="submit" src="button.png" >`
* `<input type="submit" src="button.png" >`
* `<img type="image" src="button.png" >`


---
## Quiz

### How much do you know about image buttons?

Which attribute is not a valid image button attribute for overriding default form behaviors?

* formoverride
* formaction
* formmethod
* formnovalidate
* formtarget
* formenctype
