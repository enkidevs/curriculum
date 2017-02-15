# Consuming events
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: module-patterns

links:

  - '[Node Events](https://nodesource.com/blog/understanding-the-nodejs-event-loop/)'

---
## Content

Node applications are event driven applications, an event occurs upon a change of state in an application, for example, a button being clicked, or data being inputted.

Node events are consumed when an in-application event occurs, modules subscribe to events by listening to the event on a given object. For example, in a file system, an event could be that a file has been edited:

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

Complete the code snippet to add a callback to the object in case of an 'edit' event:
???

```
system.file.???(‘???’, function
                      (fileID, initials) {
```
* `on`
* `edit`
* `event`
* `event=edit`
* `callback`
---
## Revision

Which method is called when an event occurs to trigger the callback function?
???

* `.on`
* `.event`
* `.start`
