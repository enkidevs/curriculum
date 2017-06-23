# Declarative Rendering
author: mayyay

levels:

  - beginner

type: normal

category: must-know

links:

  - '[Learn More](https://vuejs.org/v2/guide/#Declarative-Rendering)'

---
## Content

Vue.js allows content to be rendered using
  a simple template syntax. The values
  to be rendered should be placed in the
  data object of the Vue configuration.

HTML
```
<div id="app">
  {{ message }}
</div>
```
JS
```
var app = new Vue({
  el: '#app',
  data: {
    message: 'Hello world!',
  }
})
```

---
## Practice

What brackets are used in the template?
```
<div id="app">
  ???
</div>
```

* {{ message }}
* [[ message ]]
* (( message ))

---
## Revision

What should the data to be rendered in the
  template be placed?

```
var app = new Vue({
  el: '#app',
  ???: {
    message: 'Hello world!',
  }
})
```

* data
* render
* template
