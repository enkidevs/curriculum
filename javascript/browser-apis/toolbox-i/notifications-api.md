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

```javascript
if (Notification.permission === "granted")
{
...
}
```

To request permission to display notifications use *Notification.requestPermission()*:

```javascript
Notification.requestPermission(
function (permission) {
   if (permission === "granted") {
   //notification logic
  }
});
```

Once permission is granted you can create notifications:

```javascript
var notification =
  new Notification("Hello");
```

The notification can be further customised by passing in options to set an icon or body text:

```javascript
var options = {
    icon: anImage,
    body: someText
}
var n = new Notification(title, options);
```

---
## Practice

Fill in the following code snippet such that it will send the user a notification with the text "Hello from Enki" only if the permissions are already granted:

```javascript
if (???.??? === ???)
{
  ???(???)
}
```

* Notification
* permissions
* "granted"
* new Notification
* "Hello from Enki"
* Notif
* true
* access
* throw Notification
* return Notification
* return Notif
* new Notif
* throw Notif

---
## Revision

Which method exposed by the Notifications API can be used to ask for user permissions with regard to sending notifications?

```javascript
???.???()
```

* Notification
* requestPermission
* request
* permission
* requestAccess
* access
* grantAccess
* Notif
 
