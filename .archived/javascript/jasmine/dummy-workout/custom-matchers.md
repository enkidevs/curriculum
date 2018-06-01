---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

inAlgoPool: false

category: tip

---
# Custom Matchers

---
## Content

In addition to the Jasmine's built in *matcher* functions you can create *custom matchers* to reuse matching logic.

*custom matchers* are created via a factory function. The matcher must return a *compare* function accepting actual and expected parameters 

```
var customMatchers = {		
toBeBig:function(util, equalTesters){
		
return {
  compare: function(actual, expected)
  {
    var result = {};
    result.pass = actual > 50;

    if(result.pass){
     result.message = "Expected " + actual
     + "to be big";
    }
    else {
     result.message = "Expected " + actual 
     + " to be big but was not";
    }            
    return result;
  }
};
}};
```
*custom matchers* are added in the *beforeEach* block:
```
beforeEach(function() {
 jasmine.addMatchers(customMatchers);
});	
```
The custom matcher can now be used in a spec:

```javascript
expect(51).toBeBig();    // pass
expect(1).toBeBig();     // fail
```