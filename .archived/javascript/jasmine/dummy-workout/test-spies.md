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
    [eclipsesource.com](http://eclipsesource.com/blogs/2014/03/27/mocks-in-jasmine-tests/){website}

  - >-
    [htmlgoodies.com](http://www.htmlgoodies.com/html5/javascript/spy-on-javascript-methods-using-the-jasmine-testing-framework.html#fbid=TZKkKt-dVJs){website}

---
# Test Spies

---
## Content

Spies (elsewhere referred to as *doubles* or *mocks*) allow you to replace any function with your own version. 

This can be useful to replace external or slow dependencies such as calling a web service, return a fixed value from a function and validating that methods you expect to be called are actually called.

The below example checks that the *addTwoAndThree* calls the *add* method:
 
```JavaScript
describe("spy example", function() {
    it("add should be called", function() {
        
    var func = {
       add: function(x, y){
        return x+y;
       },
       addTwoAndThree: function(){
        return this.add(2,3);            
       }
      };
        
      spyOn(func, "add");        
      func.addTwoAndThree();
        
      expect(func.add)
      .toHaveBeenCalled();
    });
});
```
It is also possible to validate that functions are called with specific parameters.

Note that *spies* exists only in the *`describe`* or *`it`* block where they are defined.