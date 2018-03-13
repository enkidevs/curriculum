---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: feature


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/notification){website}'


---

# Notifications API

---
## Content

The Notifications API displays desktop notifications to the user and is a great way to alert the user of important events occurring in the application. 

It would be annoying if any website could create notifications so the user must grant the notification API permission. 

To check if the user has granted permission check the *Notification.permission* property:
```
if (Notification.permission === "granted")
{
...
}
```

To request permission to display notifications use *Notification.requestPermission()*:

```
Notification.requestPermission(
function (permission) {
   if (permission === "granted") {
   //notification logic
  }
});
    
```

Once permission is granted you can create notifications:
```
var notification = 
new Notification("Hello");
```

The notification can be further customised by passing in options to set an icon or body text:
```
var options = {
    icon: anImage,
    body: someText
}
var n = new Notification(title, options);

```

---
## Revision

Which JS call is the call used to request the permission to display notifications, using the Notifications API? ???


* `Notification.requestPermission(`
* `Notification.permission(`
* `Notification.grantPermission(`
* `Notification.permissionStatus(`

