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

  - '[jasmine.github.io](http://jasmine.github.io/2.0/introduction.html){website}'

  - >-
    [randycoulman.com](http://randycoulman.com/blog/2015/02/10/more-jasmine-matchers/){website}

---
# Partial Matching using `jasmine.objectContaining`

---
## Content

`jasmine.objectContaining` allows you to test an object contains one or more specific properties.

For example to test an object contains *firstname* equal to "John" and *lastname* equal to "Smith" and ignore the *age* property:

```JavaScript
describe(".objectContaining",function() {

  var obj={
	firstName: "John",
	lastName: "Smith",
	age: 30
  };
  
  it("matches", function() {
        expect(obj).toEqual(
        jasmine.objectContaining({   
           firstName: "John",
		   lastName: "Smith"
        }));
  });
});
```