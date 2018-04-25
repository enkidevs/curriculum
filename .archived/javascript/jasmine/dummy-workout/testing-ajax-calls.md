---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - testing

links:

  - >-
    [theaveragedev.com](http://theaveragedev.com/ajax-testing-with-jasmine-2-02/){website}

---
# Testing Ajax Calls

---
## Content

The *`mock-ajax.js`* plugin file allows ajax calls to be mocked out in tests. 

To mock all ajax calls across a suite the plugin must be installed in a *`beforeEach`* function. Jasmine-ajax stops the global *`XMLHttpRequest`* for the page, uninstalling it after testing allows specs to make real ajax requests.
```JavaScript
describe("testing ajax calls" function() {
  beforeEach(function(){
    jasmine.Ajax.install();
  });
  afterEach(function(){
    jasmine.Ajax.uninstall();
  });
});
```
Ajax calls can be made as normal:
```JavaScript
it("carrying out ajax calls", function() {
  var fnDone =jasmine.createSpy("success");
  var request = new XMLHttpRequest();
  request.onreadystatechange = 
                 function(args) {
    if (this.readyState == this.DONE) {
      fnDone(this.responseText);
    }
  };
  request.open("GET", 
               "/your/favourite/url");
  request.send();
  expect(jasmine.Ajax.requests.mostRecent()
       .url).toBe('/your/favourite/url');
```

---
## Practice

Which of the following is the proper installation for `Jasmine-ajax` in a `beforeEach()` function? ???

```javascript
beforeEach(function() {
   // Option A
   Jasmine-Ajax.install();

   // Option B
   jasmine.Ajax.install();

   // Option C
   jasmine.install.Ajax();
}
```
* Option B
* Option C
* Option A

---
## Revision

What plugin is used to allow ajax calls to be mocked out in tests?

???

* mock-ajax.js
* mock-test-ajax.js
* ajax-mock.js