---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

links:

  - >-
    [css-tricks.com](https://css-tricks.com/snippets/javascript/get-url-variables/){website}

---
# Get query/url variables

---
## Content

Search for the value of a given parameter in a URL query with the following method:

```javascript
function findVariable(variable) {
  var query = window.location
    .search.substring(1);
  var vars = query.split("&");
  for(var i=0;i<vars.length;i++) {
    var pair = vars[i].split("=");
    if(pair[0] == variable){
        return pair[1];
    }
  }
  return(false);
}

```
`location.search` will give the URL part from the `"?"` character until the end. 

Call the function with the required variable as parameter:
```javascript
findVariable(param);
```

For example:
```javascript
http://www.myurl.com/index.php?id=5&state=on
findVariable("id") // returns "5"
findVariable("state") // returns "on"

```

---
## Practice

What does the following JS code return? ???

```javascript
http://www.enki.com/here.php?pQ=1&ans=true

findVariable("pQ");
findVariable("ans");
```

* 1, true
* true, true
* undefined, true
* 1, undefined
* undefined, undefined

---
## Revision

Complete the code line such that it returns the current **URL** part from the `?` to the end:
```javascript
return ???.???;
```
* location
* search
* url
* subURL
* window
* history
* findVariable(?)