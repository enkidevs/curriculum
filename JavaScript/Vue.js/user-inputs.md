# User Inputs
author: mayyay

levels:

  - basic

type: normal

category: must-know

links:

  - '[Learn More](https://vuejs.org/v2/guide/#Handling-User-Input)'

---
## Content

Letting users interact with your web app is
  made simple with the directive, `v-on`!
  Listeners can be attached to this, such
  as `click` and `keyup.enter`!

HTML
```
<div id="app">
  <p v-on:click="sayHello">Hello!<p>
</div>
```
JS
```
var app = new Vue({
  el: '#app',
  data: {
    sayHello: function () {
      alert('Hello!');
    }
  }
})
```

---
## Practice

Where should the function to be executed
  be?
???

* data object
* anywhere
* In it's own JS file

---
## Revision

What directive is used for handling inputs?
???

* v-on
* v-when
* v-if
