# Consuming events
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

---
## Content

Node events are consumed when an in-application event occurs, modules subscribe to events by listening to the event on a given object. For example, in a file system, an event could be that a file has been edited. For example:

```
var system = require(‘.filesytem.js’);
system.file.on(‘edit’, function() {

  // do something…

});
```
In this example, the `system.file` object is an event emitter, a module can listen to this object by both using the `.on` method and passing in a function which is called whenever an event with that given name occurs.

Events can also produce relevant data, for example if you wanted to know who edited a file in the system:
```
system.file.on(‘edit’, function
                      (fileID, initials) {

  console.log(‘File number %d was edited
                by %s’, fileID, initials);

});
```

To unsubscribe to events, use the `.removeListener`  method and specify the event type and the event listener function.
```
function onEdit(fileID, initials) {

  // on edit, do something…

}

system.file.removeListener(‘edit’, onEdit);
```


---
## Practice

What's always the first parameter of a Node event callback function?
???

* Event name
* Function definition
* System call number

---
## Revision

Which method is called when an event occurs to trigger the callback function?
???

* `.on`
* `.event`
* `.start`
