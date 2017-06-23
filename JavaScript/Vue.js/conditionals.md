# Conditionals
author: mayyay

levels:

  - beginner

type: normal

category: must-know

links:

  - '[Learn More](https://vuejs.org/v2/guide/#Conditionals-and-Loops)'

---
## Content

The visibility of an element can easily
  be toggled depending on the value of the
  assigned variable.

HTML
```
<div id="app">
  <p v-if="visible">Hello!</p>
</div>
```
JS
```
var app = new Vue({
  el: '#app',
  data: {
    visible: true
  }
})
```

---
## Revision

What atribute should be added to toggle
  visibility?

```
<div id="app">
  <p ???="visible">Hello!</p>
</div>
```

* v-if
* v:if
* vif
